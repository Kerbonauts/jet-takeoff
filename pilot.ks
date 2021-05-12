lock throttle to 1.
sas on.
gear on.
rcs off.
wait 3.
brakes off.
lights on.
stage.
set runmode to 1.
set runmode2 to 1.
set takeoff_pitch to r(20,0,0).
set cruise_con to r(2,0,0).
set istakenoff to false.
until runmode=0{

set forwardSpeed  to ship:velocity:surface * ship:facing:forevector.
if(forwardSpeed > 60){
    if(alt:radar > 200){
        gear off.

}


if(alt:radar > 200){
    gear off.
}

if(alt:radar <= 80){
        sas off.
    if(ship:velocity:surface * ship:facing:forevector > 60){
        lock targetPitch to 33.
        set targetDirection to 90.

        lock steering to heading(targetDirection, targetPitch).
    }
}
if(alt:radar > 500){
    lock cruisePitch to 5.
    set cruiseDIR to 90.
    lock steering to heading(cruiseDIR, cruisePitch).
}
// MANTAIN ALTITUDE
if(istakenoff = true){
    if(alt:radar < 600){
        unlock steeringManager.
        set pullUPpitch to 55.
        set pullUPdir to 90.
        lock steering to heading(pullUPdir, pullUPpitch).
    }
}

lock roll to arcTan2(-vDot (facing:starvector, up:forevector)).
vDot(facing:topvector, up:forevector).

wait 1.
print "GS:" + forwardSpeed .
print "ALT: " + alt:radar.
print "Updated roll".
print "topvector: " + facing:topvector.
print "forevector: " + up:forevector.
}}
