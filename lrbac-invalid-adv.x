--- Locations
!create L1 : Location
!set L1.lat  := 42.3601
!set L1.long := -71.0589

!create L2: Location
!set L2.lat  := 39.9390
!set L2.long := 41.1110

--- User 
!create U1 : User
!set U1.UserId := 'U1'
!insert (L2, U1) into UserLocation -- User now has different location!

--- Object
!create O1 : Object
!insert (L1, O1) into ObjLocation

!create O2 : Object
!insert (L2, O2) into ObjLocation

--- Operation
!create OpRead : Operation
!create OpWrite : Operation

--- Role with assign+active location
!create R1 : Role
!set R1.name := 'Teller'
!insert (L1, R1) into AssignLocation
!insert (L1, R1) into ActiveLocation

!create R2: Role
!set R2.name := 'Manager'
!insert (L2, R2) into AssignLocation
!insert (L2, R2) into ActiveLocation

--- Permission bound to (O1, OpRead) with both location constraints
!create P1 : Permission
!insert (R1, P1) into PermAssignment
!insert (P1, O1) into PermObjects
!insert (P1, OpRead) into PermOperations
!insert (L1, P1) into PermRoleLoc
!insert (L1, P1) into PermObjLoc

!create P2 : Permission
!insert (R2, P2) into PermAssignment
!insert (P2, O2) into PermObjects
!insert (P2, OpWrite) into PermOperations
!insert (L2, P2) into PermRoleLoc
!insert (L2, P2) into PermObjLoc

--- Assign role to user
!insert (U1, R1) into UserAssignment
!insert (U1, R2) into UserAssignment

--- Session for the user
!create S1 : Session
!insert (U1, S1) into UserSessions

--- Activate the role in this session
!insert (S1, R1) into SessionRoles
!insert (S1, R2) into SessionRoles