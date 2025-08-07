--- Create Users 
!create u1:User
!set u1.UserId := 'Rob'

!create r1:Role
!set r1.name := 'Clerk'

!create r2:Role
!set r2.name := 'Manager'

!create s1:Session

--- Assign Roles

!insert (u1, r1) into UserAssignment
!insert (s1, r1) into SessionRoles
!insert (s1, r2) into SessionRoles
!insert (u1, s1) into UserSessions

!insert (r1, r2) into DSD