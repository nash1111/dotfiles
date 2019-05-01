using Compat

import GR

macro codes(n)
  return :( [GR.PATH_MOVETO; repeat([GR.PATH_CURVE4], 3 * $n)] )
end

j = [ 0.1186, 0.2254,
      0.1186, 0.2740, 0.1186, 0.3226, 0.1185, 0.3712,
      0.1185, 0.3737, 0.1190, 0.3750, 0.1218, 0.3757,
      0.1469, 0.3822, 0.1719, 0.3889, 0.1970, 0.3955,
      0.2013, 0.3966, 0.2013, 0.3966, 0.2013, 0.3924,
      0.2013, 0.3134, 0.2013, 0.2344, 0.2012, 0.1554,
      0.2012, 0.1385, 0.2020, 0.1215, 0.2004, 0.1046,
      0.1984, 0.0841, 0.1935, 0.0645, 0.1798, 0.0479,
      0.1678, 0.0332, 0.1515, 0.0256, 0.1328, 0.0223,
      0.1118, 0.0186, 0.0906, 0.0176, 0.0693, 0.0194,
      0.0546, 0.0207, 0.0405, 0.0240, 0.0284, 0.0328,
      0.0193, 0.0395, 0.0142, 0.0479, 0.0165, 0.0592,
      0.0188, 0.0709, 0.0271, 0.0775, 0.0383, 0.0811,
      0.0455, 0.0833, 0.0531, 0.0837, 0.0606, 0.0827,
      0.0664, 0.0819, 0.0715, 0.0795, 0.0758, 0.0757,
      0.0802, 0.0717, 0.0842, 0.0675, 0.0879, 0.0629,
      0.0906, 0.0593, 0.0936, 0.0559, 0.0974, 0.0534,
      0.1039, 0.0490, 0.1101, 0.0504, 0.1140, 0.0571,
      0.1166, 0.0616, 0.1172, 0.0667, 0.1177, 0.0716,
      0.1185, 0.0788, 0.1185, 0.0861, 0.1185, 0.0933,
      0.1186, 0.1373, 0.1186, 0.1814, 0.1186, 0.2254 ]

c1 = [ 0.2134, 0.4701,
       0.2134, 0.4421, 0.1899, 0.4195, 0.1609, 0.4195,
       0.1318, 0.4195, 0.1083, 0.4421, 0.1083, 0.4701,
       0.1083, 0.4980, 0.1318, 0.5207, 0.1609, 0.5207,
       0.1899, 0.5207, 0.2134, 0.4980, 0.2134, 0.4701 ]

u = [ 0.3999, 0.1517,
      0.3906, 0.1443, 0.3815, 0.1384, 0.3716, 0.1335,
      0.3386, 0.1172, 0.3063, 0.1197, 0.2750, 0.1374,
      0.2536, 0.1495, 0.2399, 0.1676, 0.2351, 0.1914,
      0.2344, 0.1951, 0.2340, 0.1989, 0.2340, 0.2027,
      0.2340, 0.2634, 0.2340, 0.3241, 0.2339, 0.3849,
      0.2339, 0.3882, 0.2348, 0.3890, 0.2382, 0.3890,
      0.2631, 0.3889, 0.2879, 0.3889, 0.3128, 0.3890,
      0.3158, 0.3890, 0.3165, 0.3882, 0.3165, 0.3854,
      0.3164, 0.3260, 0.3164, 0.2666, 0.3165, 0.2073,
      0.3165, 0.1878, 0.3279, 0.1737, 0.3473, 0.1692,
      0.3541, 0.1676, 0.3606, 0.1679, 0.3669, 0.1710,
      0.3805, 0.1776, 0.3907, 0.1877, 0.3992, 0.1995,
      0.4002, 0.2010, 0.3999, 0.2026, 0.3999, 0.2042,
      0.3999, 0.2644, 0.3999, 0.3246, 0.3998, 0.3848,
      0.3998, 0.3882, 0.4006, 0.3890, 0.4041, 0.3890,
      0.4291, 0.3889, 0.4541, 0.3889, 0.4790, 0.3890,
      0.4819, 0.3890, 0.4825, 0.3883, 0.4825, 0.3856,
      0.4825, 0.3007, 0.4825, 0.2158, 0.4825, 0.1309,
      0.4825, 0.1280, 0.4817, 0.1275, 0.4789, 0.1276,
      0.4537, 0.1276, 0.4285, 0.1276, 0.4032, 0.1276,
      0.4006, 0.1275, 0.3997, 0.1281, 0.3998, 0.1307,
      0.4000, 0.1374, 0.3999, 0.1441, 0.3999, 0.1517 ]

l = [ 0.5970, 0.3216,
      0.5970, 0.2583, 0.5970, 0.1950, 0.5971, 0.1317,
      0.5971, 0.1283, 0.5961, 0.1275, 0.5927, 0.1275,
      0.5679, 0.1277, 0.5430, 0.1277, 0.5182, 0.1276,
      0.5153, 0.1275, 0.5146, 0.1282, 0.5146, 0.1310,
      0.5147, 0.2508, 0.5147, 0.3707, 0.5146, 0.4905,
      0.5146, 0.4930, 0.5152, 0.4941, 0.5178, 0.4948,
      0.5429, 0.5014, 0.5679, 0.5081, 0.5930, 0.5149,
      0.5963, 0.5158, 0.5971, 0.5154, 0.5971, 0.5118,
      0.5970, 0.4484, 0.5970, 0.3850, 0.5970, 0.3216 ]

i = [ 0.7118, 0.2621,
      0.7118, 0.2187, 0.7118, 0.1752, 0.7119, 0.1318,
      0.7119, 0.1287, 0.7114, 0.1275, 0.7077, 0.1275,
      0.6827, 0.1277, 0.6577, 0.1277, 0.6327, 0.1275,
      0.6299, 0.1275, 0.6292, 0.1281, 0.6292, 0.1309,
      0.6293, 0.2111, 0.6293, 0.2914, 0.6292, 0.3716,
      0.6292, 0.3739, 0.6298, 0.3749, 0.6322, 0.3756,
      0.6576, 0.3822, 0.6831, 0.3889, 0.7084, 0.3958,
      0.7118, 0.3967, 0.7119, 0.3957, 0.7119, 0.3931,
      0.7118, 0.3494, 0.7118, 0.3058, 0.7118, 0.2621 ]

a = [ 0.8846, 0.1482,
      0.8821, 0.1462, 0.8801, 0.1448, 0.8782, 0.1432,
      0.8643, 0.1317, 0.8482, 0.1251, 0.8299, 0.1235,
      0.8115, 0.1219, 0.7934, 0.1228, 0.7760, 0.1298,
      0.7375, 0.1453, 0.7264, 0.1825, 0.7380, 0.2140,
      0.7437, 0.2296, 0.7554, 0.2412, 0.7693, 0.2506,
      0.7874, 0.2629, 0.8075, 0.2712, 0.8282, 0.2784,
      0.8460, 0.2846, 0.8639, 0.2905, 0.8822, 0.2948,
      0.8836, 0.2951, 0.8847, 0.2956, 0.8846, 0.2974,
      0.8842, 0.3109, 0.8855, 0.3244, 0.8831, 0.3378,
      0.8792, 0.3599, 0.8620, 0.3685, 0.8420, 0.3665,
      0.8404, 0.3663, 0.8388, 0.3661, 0.8371, 0.3658,
      0.8216, 0.3624, 0.8139, 0.3522, 0.8137, 0.3347,
      0.8136, 0.3294, 0.8129, 0.3242, 0.8115, 0.3191,
      0.8086, 0.3092, 0.8020, 0.3027, 0.7918, 0.2999,
      0.7809, 0.2969, 0.7698, 0.2968, 0.7592, 0.3008,
      0.7384, 0.3086, 0.7309, 0.3320, 0.7429, 0.3515,
      0.7501, 0.3631, 0.7608, 0.3711, 0.7730, 0.3772,
      0.7929, 0.3872, 0.8142, 0.3925, 0.8364, 0.3942,
      0.8605, 0.3961, 0.8845, 0.3953, 0.9081, 0.3896,
      0.9217, 0.3863, 0.9345, 0.3811, 0.9455, 0.3723,
      0.9597, 0.3608, 0.9671, 0.3457, 0.9672, 0.3282,
      0.9676, 0.2623, 0.9675, 0.1964, 0.9676, 0.1306,
      0.9676, 0.1281, 0.9668, 0.1275, 0.9644, 0.1276,
      0.9388, 0.1276, 0.9132, 0.1276, 0.8876, 0.1276,
      0.8853, 0.1275, 0.8845, 0.1280, 0.8846, 0.1304,
      0.8847, 0.1361, 0.8846, 0.1418, 0.8846, 0.1482 ]

ai = [ 0.8846, 0.2623,
       0.8693, 0.2559, 0.8551, 0.2489, 0.8423, 0.2396,
       0.8354, 0.2346, 0.8294, 0.2289, 0.8240, 0.2225,
       0.8105, 0.2065, 0.8177, 0.1816, 0.8294, 0.1716,
       0.8345, 0.1673, 0.8401, 0.1657, 0.8467, 0.1669,
       0.8518, 0.1679, 0.8567, 0.1696, 0.8612, 0.1722,
       0.8660, 0.1752, 0.8706, 0.1786, 0.8756, 0.1811,
       0.8830, 0.1847, 0.8851, 0.1899, 0.8848, 0.1978,
       0.8842, 0.2191, 0.8846, 0.2405, 0.8846, 0.2623 ]

c2 = [ 0.7293, 0.4652,
       0.7293, 0.4373, 0.7058, 0.4146, 0.6768, 0.4146,
       0.6478, 0.4146, 0.6242, 0.4373, 0.6242, 0.4652,
       0.6242, 0.4932, 0.6478, 0.5158, 0.6768, 0.5158,
       0.7058, 0.5158, 0.7293, 0.4932, 0.7293, 0.4652 ]

c3 = [ 0.8663, 0.4660,
       0.8663, 0.4380, 0.8428, 0.4154, 0.8138, 0.4154,
       0.7847, 0.4154, 0.7612, 0.4380, 0.7612, 0.4660,
       0.7612, 0.4939, 0.7847, 0.5166, 0.8138, 0.5166,
       0.8428, 0.5166, 0.8663, 0.4939, 0.8663, 0.4660 ]

c4 = [ 0.7974, 0.5768,
       0.7974, 0.5488, 0.7739, 0.5262, 0.7449, 0.5262,
       0.7158, 0.5262, 0.6923, 0.5488, 0.6923, 0.5768,
       0.6923, 0.6047, 0.7158, 0.6274, 0.7449, 0.6274,
       0.7739, 0.6274, 0.7974, 0.6047, 0.7974, 0.5768 ]

GR.setcolorrep(1, 0.14, 0.14, 0.14)
GR.setcolorrep(2, 0.251, 0.388, 0.847) # darker blue
GR.setcolorrep(3, 0.796, 0.235, 0.2)   # darker red
GR.setcolorrep(4, 0.584, 0.345, 0.698) # darker purple
GR.setcolorrep(5, 0.22, 0.596, 0.149)  # darker green
GR.setcolorrep(6, 0.4, 0.51, 0.878)    # lighter blue
GR.setcolorrep(7, 0.835, 0.388, 0.361) # lighter red
GR.setcolorrep(8, 0.667, 0.475, 0.757) # lighter purple
GR.setcolorrep(9, 0.376, 0.678, 0.318) # lighter green

GR.setviewport(0, 1, 0, 1)
GR.setwindow(0, 1, 0, 1)
GR.setfillintstyle(GR.INTSTYLE_SOLID)
GR.updatews()

for s in 0.1:0.01:0.5
  GR.clearws()
  GR.setviewport(0.5 - s, 0.5 + s, 0.5 - s, 0.5 + s)
  GR.setlinewidth(s * 8)

  GR.setfillcolorind(1)
  GR.drawpath(j,  @codes(19), 1)
  GR.setfillcolorind(6)
  GR.drawpath(c1, @codes(4), 1)
  GR.setlinecolorind(2)
  GR.drawpath(c1, @codes(4), 0)
  GR.setfillcolorind(1)

  GR.drawpath(u,  @codes(21), 1)

  GR.drawpath(l,  @codes(9), 1)

  GR.drawpath(i,  @codes(9), 1)

  GR.drawpath(a,  @codes(26), 1)
  GR.setfillcolorind(0)
  GR.drawpath(ai, @codes(8), 1)

  GR.setfillcolorind(7)
  GR.drawpath(c2, @codes(4), 1)
  GR.setlinecolorind(3)
  GR.drawpath(c2, @codes(4), 0)
  GR.setfillcolorind(8)
  GR.drawpath(c3, @codes(4), 1)
  GR.setlinecolorind(4)
  GR.drawpath(c3, @codes(4), 0)
  GR.setfillcolorind(9)
  GR.drawpath(c4, @codes(4), 1)
  GR.setlinecolorind(5)
  GR.drawpath(c4, @codes(4), 0)

  GR.updatews()

  sleep(0.01)
  end
