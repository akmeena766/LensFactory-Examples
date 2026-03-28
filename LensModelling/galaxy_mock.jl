using LensFactory
using LensFactory.Constants
using GLMakie

# Initialize default cosmology
cosmo = Cosmology.init_cosmology()

# Lens and source redshifts
zl = 0.5
zs = 1.5

# ADDs and distance ratio
Dol = Cosmology.angular_diameter_distance(cosmo, 0., zl)
Dls = Cosmology.angular_diameter_distance(cosmo, zl, zs)
Dos = Cosmology.angular_diameter_distance(cosmo, 0., zs)
adis = Dls/Dos


x, y = Lenses.get_meshgrid(2, 2, 0.04)
lens = Lenses.init_SIELens(v_d=230E3, x_s=0.0, eps=0.3, pa=0)

β = (0.35, 0.00)
im_pos = Lenses.get_image(lens, x, y, adis, β)
for pos in im_pos
   println("Image position: ", round.(pos, digits=2))
end

fig, ax = Lenses.plot_image_plane(lens, x, y, adis; source=β)
display(fig)