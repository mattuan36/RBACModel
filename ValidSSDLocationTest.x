--- Create Users 
!create u1:User
!set u1.UserId := 'Rob'

!create r1:Role
!set r1.name := 'Clerk'

!create r2:Role
!set r2.name := 'Manager'

!create s1:Session

!create l1:Location
!set l1.lat := 10.0
!set l1.long := 11.0

!create l2:Location
!set l2.lat := 5.0
!set l2.long := 6.0

--- Assign Roles

!insert (u1, r1) into UserAssignment
!insert (u1, s1) into UserSessions

!insert (l1, r1) into ActiveLocation
!insert (l2, r2) into ActiveLocation
!insert (l1, r1) into AssignLocation
!insert (l2, r2) into AssignLocation
!insert (l1, u1) into UserLocation
!insert (l1, s1) into SessionLocation

!insert (r1, r2) into SSD
