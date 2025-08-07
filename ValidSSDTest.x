--- Create Users 
!create u1:User
!set u1.UserId := 'Rob'

!create u2:User
!set u2.UserId := 'Will'

!create r1:Role
!set r1.name := 'Clerk'

!create r2:Role
!set r2.name := 'Manager'

!create r3:Role
!set r3.name := 'Cleaner'

!create p1: Permission

!create o1: Object

!create op1: Operation

!create s1:Session

--- Assign Roles

!insert (u1, r1) into UserAssignment
!insert (u2, r2) into UserAssignment
!insert (u1, r3) into UserAssignment
!insert (u1, s1) into UserSessions

!insert (o1,op1) into ExecuteOn
!insert (p1,o1) into PermObjects
!insert (p1,op1) into PermOperations
!insert (r1,p1) into PermAssignment

!insert (r1, r2) into SSD
