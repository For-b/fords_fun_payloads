@echo off

setlocal enabledelayedexpansion

set string="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae nulla nisl. Integer non ipsum vehicula, vulputate ante quis, dignissim dui. Mauris nunc purus, suscipit in massa ut, sagittis sollicitudin erat. In mollis purus at pretium volutpat. Nulla magna orci, faucibus id viverra eu, lobortis vitae purus. Maecenas sagittis aliquet ligula sed maximus. Etiam sit amet lacus posuere, semper libero vel, pharetra justo. Morbi luctus molestie arcu et lacinia. Duis eget nisl sed purus hendrerit porta. Maecenas ac lectus id augue euismod aliquet ac feugiat velit. Nunc sem enim, tristique vitae feugiat a, sodales et libero. Suspendisse egestas euismod nisi nec elementum. Nullam nisl dui, congue eget fermentum ornare, ornare sit amet sem. Sed malesuada tincidunt nisi, vel mollis ipsum. Cras blandit dui nec rutrum feugiat. Fusce luctus vel mi sit amet tempus. Morbi consequat, ligula sed tempus viverra, lectus dolor interdum tortor, eu sagittis enim dui eu odio. Donec viverra varius urna in ultricies. Duis ut est ac velit commodo vehicula. Fusce nec mi libero. Quisque sagittis felis at augue efficitur, et viverra sem volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque ipsum augue, malesuada vel congue sed, auctor at enim. Nunc hendrerit scelerisque pharetra. Vivamus sit amet nibh sagittis, vehicula massa et, rhoncus mauris. In vel sapien iaculis, finibus ante ac, egestas sem. Cras in augue metus. Etiam volutpat tristique velit, ut iaculis velit condimentum at. Pellentesque malesuada lorem vitae imperdiet mattis. Etiam vitae libero tortor. Praesent varius ipsum mauris, vitae dignissim libero lacinia et. Nullam commodo viverra ultrices. Maecenas pretium erat at leo tristique, a varius urna tempor. Sed diam sem, euismod ut ex eget, hendrerit commodo dolor. Aenean cursus nunc nec dolor elementum iaculis. Ut commodo odio non vulputate malesuada. Quisque a sapien ante. In facilisis ligula lacus, vitae commodo neque dignissim at. Sed viverra dictum semper. Vestibulum porta luctus risus, at tristique massa condimentum vel. Cras placerat ex neque, eu elementum lorem mattis pretium. Nunc dolor metus, dapibus nec finibus ac, luctus nec elit. Nullam hendrerit ex commodo odio bibendum convallis. In iaculis odio et blandit pretium. Sed ut orci ac lacus accumsan accumsan. Maecenas eu orci et est bibendum faucibus quis ac turpis. Nullam mattis sagittis quam a vestibulum. Praesent eget rutrum dui. In vel massa viverra, laoreet lacus nec, malesuada ante. Quisque a felis efficitur, hendrerit massa quis, finibus massa. Nunc vel felis in magna imperdiet tristique vitae et ligula. Mauris suscipit sit amet nulla et viverra."

for /L %%a in (1, 32, 2703) do (
set sting=!string:~0,%%a! 
echo ^>!sting!
ping localhost -n 1 >nul
if %%a GEQ 2703 goto eof
-cls
)

:eof
pause >nul