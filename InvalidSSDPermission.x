--- Create Users 
!create u1:User
!set u1.UserId := 'Rob'

!create u2:User
!set u2.UserId := 'Will'

!create r1:Role
!set r1.name := 'Clerk'

!create r2:Role
!set r2.name := 'Manager'

!create s1:Session

!create p1: Permission

--- Assign Roles

!insert (u1, r1) into UserAssignment
!insert (u2, r2) into UserAssignment
!insert (u1, s1) into UserSessions
!insert (r1, p1) into PermAssignment
!insert (r2, p1) into PermAssignment

!insert (r1, r2) into SSD
