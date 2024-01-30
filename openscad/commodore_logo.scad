// Commodore Business Machines Logo by Chris Yaneff (1965)
// scruss - 2018
// from https://twitter.com/vccmalta/status/1066231884911468544

module logo(size=100) {
    a=size; // 10 cm
    b=0.034*a;
    c=0.166*a;
    d=0.30*a;
    e=0.364*a;
    f=0.52*a;
    g=0.53*a; // central hole is slightly elliptical
    h=a-e;
    i=b+2*(d+c);
    $fn=64;

    
    translate([-a/2, -a/2, 0])
    union() {
        difference() {
            translate([i/2,i/2]) difference() {
                circle(d=i);
                scale([g/f,f/f]) circle(d=f);
            }
            translate([h,0])square(a);
        }
        polygon([
            [h, i-d-c],
            [h, i-d],
            [a, i-d],
            [a-c, i-d-c]
        ]);
        polygon([
            [h, d],
            [h, d+c],
            [a-c, d+c],
            [a, d]
        ]);
    }
}
