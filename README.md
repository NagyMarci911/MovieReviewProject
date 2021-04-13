# MovieReviewProject
Connectionstring nelkül töltöttem fel.
A használt DB neve moviedb, kettő táblát tartalmaz: dbo.ReviewDB - columns: DirectorName nvarchar(40), MovieTitle nvarchar(30), Year nvarchar(30), Rating nvarchar(5), Netflix nvarchar(5), Amazon nvarchar(5), HBO nvarchar(5), ReviewText nvarchar(MAX), PostID nvarchar(25), UserID nvarchar(45)
                                                    dbo.UserDB - columns: UserID nvarchar(30), UserName nvarchar(30), DateOfBirth nvarchar(30), Country nvarchar(30), Pasword nvarChar(30)

Az oldalra lehet regisztrálni, bejelentkezni és filmértékelést készíteni, amit minden felhasználó lát és a feltöltő nevével jelenik meg. A saját értékeléseid megjelennek a profilodban.
