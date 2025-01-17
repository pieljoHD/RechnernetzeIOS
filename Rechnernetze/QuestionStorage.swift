import SwiftUI
import Foundation


struct Option: Identifiable {
    let id = UUID()
    let answer: String
    let isCorrect: Bool
}

struct Question {
    let question: String
    let options: [Option]
}

class QuestionStorage: ObservableObject {
    @Published var questionList: [Question] = [
        Question(
            question: "Sie wollen ein Benutzerkonto für Andrea Bayer von der Kommandozeile aus erstellen. Das Konto soll Mitglied der Techniker-Gruppe im Mannheim-Container sein. Es soll nach der Erstellung deativiert sein, sein Kennwort soll Sicherheit lauten und es soll sich im Container ou=Benutzer,ou=Mannheim,dc=beispiel,dc=local befinden. Welche der folgenden Tools bzw Kombination von Tools können dies bewerkstelligen?",
            options: [
                Option(answer: "Net User,gefolgt von dsmove", isCorrect: false),
                Option(answer: "ldifde, gefolgt von dsmod", isCorrect: true),
                Option(answer: "dsadd", isCorrect: true),
                Option(answer: "csvde,gefolgt von dsmove", isCorrect: false),
                Option(answer: "dsquery,gefolgt von dsmod", isCorrect: false)
            ]
        ),
        Question(
            question: "Ein Vorgesetzter sagt Ihnen, dass  einer seiner Mitarbeiter zu einer Konkurenzfirma gewechselt hat. Er will sichergehen, dass der Mitarbeiter keinen Zugriff mehr auf seinen Computer oder die Dateien auf dem Dateiserver hat. Was wäre das beste Vorgehen?",
            options: [
                Option(answer: "Benutzkonto löschen", isCorrect: false),
                Option(answer: "Benutzerkonto in Ehemaliger Mitarbeiter umbennenen", isCorrect: false),
                Option(answer: "Option Konto ist deaktiviert auswählen", isCorrect: true),
                Option(answer: "Wert im Feld Konto läuft ab abändern", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie planen den Ressourcenzugirff in einer Gesamtstruktur mit mehrenen Domänen. Bestimmte Benutzer in allen Domänen brauchen Zugriff auf die drei kontinentalen Hauptdomänen. Was ist die empfohlene Strategie, um diesen Ressourcenzugriff zu ermöglichen?",
            options: [
                Option(answer: "Benutzer -> universale Gruppe -> globale Gruppen -> lokale Domänengruppen -> Ressourcenberechtigung", isCorrect: false),
                Option(answer: "Benutzer -> globale Gruppen -> universale Gruppen -> lokale Domänengruppen -> Ressourcenberechtigung", isCorrect: true),
                Option(answer: "Benutzer -> lokale Domänengruppen -> universale Gruppen -> globale Gruppen -> Ressourcenberechtigung", isCorrect: false),
                Option(answer: "Benutzer -> universale Gruppen -> Ressourcenberechtigung", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie müssen Ihren Vorgesetzten erklären, was Profile sind. Ihnen wird bewusst, dass Sie Ihre Präsentation mit einer Definition der drei Profiltypen beginnen müssen. Wählen Sie die drei Profiltypen aus.",
            options: [
                Option(answer: "Active Directory-Benutzerprofil", isCorrect: false),
                Option(answer: "Lokales Benutzerprofil", isCorrect: true),
                Option(answer: "Gruppenprofil", isCorrect: false),
                Option(answer: "Gruppenrichtilinienprofil", isCorrect: false),
                Option(answer: "Servergespeichertes Benutzerprofil", isCorrect: true),
                Option(answer: "Verbindliches Benutzerprofil", isCorrect: true)
            ]
        ),
        Question(
            question: "Sie sind Administrator eines kleinen Unternehmens, das Callcenter-Dienste für andere Firmen anbietet. Eine Mitarbeiterin ruft Sie an und beschwert sich, dass das Foto ihres Enkels, das sie als Desktop-Hintergrund festgelegt hat, bei der Anmeldung heute morgen verschwunden war. Was ist die wahrscheinlichste Ursache des Problems?",
            options: [
                Option(answer: "Ihr Benutzerprofil ist beschädigt", isCorrect: false),
                Option(answer: "Sie hat sich am falschen Computer angemeldet", isCorrect: false),
                Option(answer: "Sie hat sich lokal angemeldet", isCorrect: false),
                Option(answer: "Ihr wurde ein verbindliches Profil zugewiesen", isCorrect: true)
            ]
        ),
        Question(
            question: "Aus betriebwirtschaftlichen Gründen musste Ihre Firma 200 Mitarbeiter entlassen. Die Personalabteilung hat Ihnen die Liste der Namen als Textdatei übermittelt. Mit welchem Kommando könnte man diese Benutzerkonten löschen.",
            options: [
                Option(answer: "dsmod", isCorrect: false),
                Option(answer: "dsadd delete", isCorrect: false),
                Option(answer: "csvde", isCorrect: false),
                Option(answer: "dsrm", isCorrect: true)
            ]
        ),
        Question(
            question: "Ihr Unternehmen hat unglängst eine kleine Firma übernommen. Diese andere Firma setzt ein LDAP-kompatibles Verzeichnis unter UNIX ein. Sie sollen nun Benutzerkonten in Active Directory für die Mitarbeiter dieser Firma anlegen. Welches Tool ist am besten für diese Aufgabe geeignet?",
            options: [
                Option(answer: "dsmod", isCorrect: false),
                Option(answer: "ldifde", isCorrect: true),
                Option(answer: "csvde", isCorrect: false),
                Option(answer: "dsrm", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie sind Administrator einer kleinen Universität. In solchen Umgebungen ist es üblich, dass gelangweilte Studenten jede Nacht zwischen 22 Uht und 2 Uhr morgens versuchen, dass System zu hacken. Mit welchen beiden Maßnahmen schützen Sie sich vor Wörterbuchangriffen und stellen sicher, dass sich Ihre Benutzer um 8 Uhr morgens anmelden können?",
            options: [
                Option(answer: "Kontosperrungsschwelle auf 0 setzen", isCorrect: false),
                Option(answer: "Kontosperrdauer auf 60 setzen", isCorrect: true),
                Option(answer: "Kontosperrdauer auf 0 setzen", isCorrect: false),
                Option(answer: "Kontosperrungsschwelle auf 3 setzen", isCorrect: true)
            ]
        ),
        Question(
            question: "Sie sind Administrator eines kleinen Unternehmens, das Callcenter-Dienste für andere Firmen anbietet. Eine Mitarbeiterin ruft Sie an und beschwert sich, dass sie keinerlei Dateien in Eigene Datein findet. Bis gestern war alles noch in Ordnung. Gruppenrichtlinien werden nicht verwendet. Was ist die wahrscheinlichste Ursache des Problems?",
            options: [
                Option(answer: "ihr Benutzerprofil ist beschädigt", isCorrect: false),
                Option(answer: "Sie hat sich am falschen Computer angemeldet", isCorrect: true),
                Option(answer: "Sie hat sich lokal angemeldet", isCorrect: false),
                Option(answer: "Ihr wurde ein verbindliches Profil zugewiesen", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie sind ein untergeordneter Administrator einer großen Entwicklungsfirma mit etlichen Niederlassungen. Sie haben in einem Magazin gelesen, dass die beste Methode zur Zuweisung von Ressourcen in einer Umgebung mit mehreren Domänen die folgende ist: Man weißt einer lokalen Domänengruppe Berechtigungen zu, dann nimmt man die globalen Gruppen in die lokale Domänengruppe auf und nimmt schließlich die globalen Gruppen  in eine universale Gruppe auf. Doch der Server erlaubt Ihnen nicht, universale Gruppen einzurichten. Was ist der wahrscheinlichste Grund dafür?",
            options: [
                Option(answer: "Ihnen fehlendie entsprechenden Rechte", isCorrect: false),
                Option(answer: "Die Domänenfunktionsebene ist Windows 2000 gemischt", isCorrect: true),
                Option(answer: "Die Domänenfunktionsebene ist Windows 2000 pur", isCorrect: false),
                Option(answer: "Die Domänenfunktionsebene ist nicht Windows 2003 pur", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie sind Administrator einer kleinen Firma in Familienbesitz. Aufgrund der Firmengröße war es schwierig, den Mitarbeitern die Bedeutung von Sicherheit nahe zu bringen. Sie wollen die Kennwortrichlinie ändern, sodass Benutzer ihre Kennwörter alle 30 Tage ändern müssen und ein Kennwort zwei Jahre lang nicht erneut verwenden können. Welche der folgenden Optionen sind dazu geeignet?",
            options: [
                Option(answer: "Setzen Sie die Kennwortchronik auf 730 auf das maximale Kennwortalter auf 30", isCorrect: false),
                Option(answer: "Setzen Sie die Kennwortchronik auf 365 auf das maximale Kennwortalter auf 30", isCorrect: false),
                Option(answer: "Setzen Sie die Kennwortchronik auf 25 auf das maximale Kennwortalter auf 28", isCorrect: false),
                Option(answer: "Setzen Sie die Kennwortchronik auf 24 auf das maximale Kennwortalter auf 30", isCorrect: true)
            ]
        ),
        Question(
            question: "Ein Mitglied der Geschäftsleitung sagt Ihnen, seine Assistentin habe die Firma verlassen. Die Vorgesetzte möchte nun, dass die Nachfolgerin Zugriff auf den Rechner der Vorgängerin und deren Dateien auf dem Dateiserver hat. Wie gehen Sie am besten vor?",
            options: [
                Option(answer: "Erstellen Sie ein neues Benutzerkonto für die Nachfolgerin und geben Sie ihr Zugriff auf die gewünschten Dateien", isCorrect: false),
                Option(answer: "Bennenen Sie das alte Benutzerkonto für die neue Benutzerin um", isCorrect: true),
                Option(answer: "Erstellen Sie ein neues Benutzerkonto für die Nachfolgerin und kopiert Sie die gewünschten Dateien in ihrem Basisordner", isCorrect: false),
                Option(answer: "Sagen Sie der neuen Mitarbeiterin die Benutzererkennung und das Kennwort der ehermaligen Mitarbeiterin", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following Windows Server 2003 Active Directory user account names is the User Principal Name (UPN)? (Choose the best answer)",
            options: [
                Option(answer: "examcram.corp/music/elton.john", isCorrect: false),
                Option(answer: "elton.john.plays.piano.music", isCorrect: false),
                Option(answer: "elton.john@examcram.corp", isCorrect: true),
                Option(answer: "CN=elton.john", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following Active Directory object names can exist within the same forest (examcram.corp) at the same time? (Choose the best answer)",
            options: [
                Option(answer: "CN=DanB stored within the OU named Sales", isCorrect: false),
                Option(answer: "CN=DanB stored within the OU named Marketing", isCorrect: false),
                Option(answer: "CN=DanB,ou=mgmt,dc=examcram,dc=corp", isCorrect: false),
                Option(answer: "examcram.corp/music/DanB", isCorrect: false),
                Option(answer: "None of these", isCorrect: false),
                Option(answer: "All of these", isCorrect: true)
            ]
        ),
        Question(
            question: "What is a suer account's Canonical Name if the LDAP Distingished Name is CN=dan.balter,ou=sales,ou=west,dc=infotech,dc=corp? (Choose the best answer)",
            options: [
                Option(answer: "CN=dan.balter", isCorrect: false),
                Option(answer: "dan.balter@infotech.corp/west/sales", isCorrect: false),
                Option(answer: "infotech.corp\\dan.balter", isCorrect: false),
                Option(answer: "infotech.corp/west/sales/dan.balter", isCorrect: true),
                Option(answer: "infotech.corp/sales/west/dan.balter", isCorrect: false),
                Option(answer: "dan.balter/sales/west/infotech.corp", isCorrect: false),
            ]
        ),
        Question(
            question: "For which of the following user account properties tabs does every property get copied when you create a new user account from a user account template? (Choose the best answer)",
            options: [
                Option(answer: "Organization", isCorrect: false),
                Option(answer: "Account", isCorrect: false),
                Option(answer: "Member of", isCorrect: true),
                Option(answer: "Address", isCorrect: false),
                Option(answer: "Profile", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following statements about object queries in the ADUC console is not correct? (Choose the best answer)",
            options: [
                Option(answer: "Query definition can be imported", isCorrect: false),
                Option(answer: "Query definition can be exported", isCorrect: false),
                Option(answer: "You can create folders and subfolders within the Saved Queries container", isCorrect: false),
                Option(answer: "You can select the Active Directory container that you would like to search", isCorrect: false),
                Option(answer: "You can save query definitions as HTML files", isCorrect: true),
                Option(answer: "You can choose not to search subcontainers", isCorrect: false)
            ]
        ),
        Question(
            question: "Where is the Group Policy setting Interactive Logon: Number of Previous Logons to Cache (in Case Domain Controller Is Not Available) located within the Default Domain Security Settings console and what is this setting's default value? (Choose the best answer)",
            options: [
                Option(answer: "It's located under Security Settings\\Local Poicies\\Security Options, and its default value is 50", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\Security Options, and its default value is 5", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\User Rights Assignment, and its default value is 10", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\User Rights Assignment, and its default value is 50", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\Security Options, and its default value is 10", isCorrect: true)
            ]
        ),
        Question(
            question: "How can you perfom a bulk import of users into Active Directory to create many user accounts at one time?",
            options: [
                Option(answer: "Use the dsadd.exe command", isCorrect: false),
                Option(answer: "Use the ADUC console", isCorrect: false),
                Option(answer: "Use the net user command", isCorrect: false),
                Option(answer: "Use the csvde.exe command", isCorrect: true),
                Option(answer: "Use the dsmod.exe command", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following requirements do not apply to the default domain security policy setting Passowrd Must Meet Complexity Requirements for Active Directory user accounts under Windows Server 2003? (Choose two)",
            options: [
                Option(answer: "Passwords must contain at least seven characters", isCorrect: true),
                Option(answer: "Passwords cannot contain all or part of the user's account name", isCorrect: false),
                Option(answer: "Passwords must contain some nonalphanumeric characters such as %,$,#,!,+ and &", isCorrect: true),
                Option(answer: "Passwords may contain numerals 0 through 9", isCorrect: false),
                Option(answer: "Passwords may contain English lowercase letters a through z", isCorrect: false),
                Option(answer: "Passwords may contain English uppercase letters A through Z", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following command-line commands can you use to rename an object within Active Directory",
            options: [
                Option(answer: "dsadd", isCorrect: false),
                Option(answer: "dsquery", isCorrect: false),
                Option(answer: "dsmove", isCorrect: true),
                Option(answer: "dsrm", isCorrect: false),
                Option(answer: "dsget", isCorrect: false),
                Option(answer: "net user", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following user passwords is acceptable based on the default settings in Active Directory for a user with the logon name of Dan?",
            options: [
                Option(answer: "dan$456", isCorrect: false),
                Option(answer: "zM!993", isCorrect: false),
                Option(answer: "33#abcd", isCorrect: true),
                Option(answer: "ttrrr789021", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following methods can you use to create computer accounts in Active Directory under Windows Server 2003?(Choose three)",
            options: [
                Option(answer: "Log on to a domain from a Windows 98 computer", isCorrect: false),
                Option(answer: "Join a domain from a Windows NT 4.0 computer", isCorrect: true),
                Option(answer: "Prestage a computer account from ADUC console", isCorrect: true),
                Option(answer: "Prestage a computer account using dsget computer command", isCorrect: false),
                Option(answer: "Prestage a computer account using the dsadd computer command", isCorrect: true),
                Option(answer: "Join a domain from a Windows 95 computer with the Active Directory client software installed", isCorrect: false)
            ]
        ),
        Question(
            question: "As an Administrator for the ExamCram.corp domain, how can you run the Active Directory Users and Computers MMC snap-in? (Choose two)",
            options: [
                Option(answer: "Double-click the file dsa.mmc in the %systemroot%system32 folder from Windows Explorer", isCorrect: false),
                Option(answer: "Click Start, Run, type aduc.msc, and click OK", isCorrect: false),
                Option(answer: "Double-click the file dsa.msc in the %systemroot%system32 folder from Windows Explorer", isCorrect: true),
                Option(answer: "Double-click the file aduc.msc in the %systemroot%system32 folder from Windows Explorer", isCorrect: false),
                Option(answer: "Click Start, Run, type mmc, and click OK. Click File, Add/Remove Snap-in, select Active Directory Users and Computers from the list of available snap-ins, click Add, and then click OK", isCorrect: false)
            ]
        ),
        Question(
            question: "What happens if you attempt to run an application program using the Run option as a different user than the user who is currently logged on, but you type in an incorrect user name or password? (Choose the best answer)",
            options: [
                Option(answer: "The program runs using the security credentials of the currently logged-on user", isCorrect: false),
                Option(answer: "You see logon failure error message box appear on the screen", isCorrect: true),
                Option(answer: "The Run As option gives you three more chances to type in the correct password before it logs off the current user", isCorrect: false),
                Option(answer: "At the Run As dialog box, you must type in the correct username and password for the currently logged-on user if you want to run the program after entering an incorrect username or password", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following commands can perform bulk imports and exports into and out of Active Directory using a file format that is compatible with the Lightweight Directory Access Protocol?",
            options: [
                Option(answer: "The dsquery.exe command", isCorrect: false),
                Option(answer: "The dsrm.exe command", isCorrect: false),
                Option(answer: "The net user command", isCorrect: false),
                Option(answer: "The ldifde.exe command", isCorrect: true),
                Option(answer: "The notepad.exe utility", isCorrect: false)
            ]
        ),
        Question(
            question: "You install Active Directory on a server. You want it to be a seperate domain that is part of an existing forest but containing a namespave seperate from the forest where you are installing it. What is this type of domain called?",
            options: [
                Option(answer: "A replica", isCorrect: false),
                Option(answer: "A child domain", isCorrect: false),
                Option(answer: "A forest root", isCorrect: false),
                Option(answer: "A tree root", isCorrect: true)
            ]
        ),
        Question(
            question: "You are installing Active Directory on a new domain controller and selecting options for placing the database and log files. Which of the following options would produce the optimum performance of these files? (Each answer represents part of the solution. Choose two)",
            options: [
                Option(answer: "Placing them on the same NTFS partition", isCorrect: false),
                Option(answer: "Ensuring plenty of hard disk space for these files to expand", isCorrect: true),
                Option(answer: "Placing them on NTFS partitions located on seperate physical disks", isCorrect: true),
                Option(answer: "Restricting them to small partitions to control their size", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following is the most appropriate scenario where you would want to install a read-only domain controller?",
            options: [
                Option(answer: "In a branch office where physical security might be less than optimum", isCorrect: true),
                Option(answer: "In the head office near the receptionist's desk", isCorrect: false),
                Option(answer: "In the server room where the forest root domain is located and you need an optimum location for the schema master and domain naming master", isCorrect: false),
                Option(answer: "In a branch office server room where you need to place the infrastructure master, RID master, and PDC emulator close to clients requiring their services", isCorrect: false)
            ]
        ),
        Question(
            question: "Peter is a network administrator for a company that operates an Active Directory forest consisting of two domains in separate trees. The company has offices in Chicago and Rome, which are connected by a 236kbps WAN link. Each office is represented by a separate Active Directory site as well as its own domain. Peter's company stores resource location data in Active Directory so that users can perform searches to locate the appropriate resources on their client computers, which run either Windows XP Professional or Windows Vista Business. However, users in the Rome office report that search times for resources are unacceptably slow. Which of the following should Peter do to improve search times at the Rome office?",
            options: [
                Option(answer: "Enable universal group caching at the Rome office.", isCorrect: false),
                Option(answer: "Configure a global catalog server at the Rome office", isCorrect: true),
                Option(answer: "Configure a domain controller for the Chicago domain in the Rome office.", isCorrect: false),
                Option(answer: "Configure a domain controller for the Rome domain in the Chicago office.", isCorrect: false)
            ]
        ),
        Question(
            question: "Sharon is the IT manager of a community college whose administrative staff is planning the college's new Windows Server 2016 domain infrastructure. Ten domain controllers will be located in various campus buildings. The college's administrators and technical support staff are to be based in an annex to the computer sciences department that would include a powerful server acting as the forest root domain controller. The administrative staff presented Sharon with a proposal that this server would incorporate the roles of global catalog server, schema master, domain naming master, and infrastructure master. Servers in other buildings would take on the other operations master roles. After studying the proposal carefully, Sharon asks the administrative staff to modify the operations master setup. Which of the following should the staff change? ",
            options: [
                Option(answer: "The college's computer help center, which is staffed by students who work parttime shifts and is located in the student union building, needs frequent access to the infrastructure master. The administrative staff should locate this role there.", isCorrect: false),
                Option(answer: "The infrastructure master does not need to be located close to the IT staff. A more sensible change would be for the administrative staff to move this role elsewhere and have the PDC emulator located close to the support staff.", isCorrect: false),
                Option(answer: "The schema master and domain naming master roles cannot function properly if they are hosted by the same computer.", isCorrect: false),
                Option(answer: "The global catalog server and infrastructure master roles cannot function properly if they are hosted by the same computer.", isCorrect: true)
            ]
        ),
        Question(
            question: "Ryan has installed Windows Server 2016 on a new server using the Server Core option. He would like to install AD DS and promote the server to be a replica domain controller in his company's single domain network. What should he do?",
            options: [
                Option(answer: "Run Server Manager from the command prompt and select the AD DS role.", isCorrect: false),
                Option(answer: "Run Server Manager from the command prompt and select the dcpromo option", isCorrect: false),
                Option(answer: "Execute the dcpromo command from the command prompt and specify the appropriate answers when prompted.", isCorrect: false),
                Option(answer: "Execute the dcpromo command from the command prompt and specify an unattended answer file containing the required information", isCorrect: true)
            ]
        ),
        Question(
            question: "Which of the following are valid domain and forest functional levels for a Windows Server 2016 domain? (Choose all that apply.)",
            options: [
                Option(answer: "Windows 2000 mixed", isCorrect: false),
                Option(answer: "Windows 2000 native", isCorrect: true),
                Option(answer: "Windows Server 2003 mixed", isCorrect: false),
                Option(answer: "Windows Server 2003 native", isCorrect: true),
                Option(answer: "Windows Server 2008 native", isCorrect: true),
            ]
        ),
        Question(
            question: "Karen is the network administrator for a company that operates an Active Directory domain whose domain controllers run Windows Server 2003. The company wants to upgrade the domain controllers to Windows Server 2016. Karen's user account is  member of the Domain Admins, Enterprise Admins, and Schema Admins groups in her company's domain.Which of the following actions does Karen need to perform before upgrading any of the domain controllers to Windows Server 2016? To answer, select the two required actions from the list that follows in the sequence in which she must execute them.",
            options: [
                Option(answer: "Run the Adprep /domainprep command on the PDC emulator.", isCorrect: true),
                Option(answer: "Run the Adprep /forestprep command on the PDC emulator.", isCorrect: false),
                Option(answer: "Run the Adprep /domainprep command on the infrastructure master.", isCorrect: false),
                Option(answer: "Run the Adprep /forestprep command on the domain naming master.", isCorrect: false),
                Option(answer: "Run the Adprep /domainprep command on the schema master.", isCorrect: false),
                Option(answer: "Run the Adprep /forestprep command on the schema master.", isCorrect: true)
            ]
        ),
        Question(
            question: "Jason is a support technician who is creating user accounts for a series of new employees that your company has hired. After creating several dozen user accounts successfully, he suddenly receives an error message informing him that Active Directory cannot create the account. He comes to you for assistance.",
            options: [
                Option(answer: "Check the operational status of the infrastructure master.", isCorrect: false),
                Option(answer: "Check the operational status of the RID master.", isCorrect: true),
                Option(answer: "Check the operational status of the PDC emulator.", isCorrect: false),
                Option(answer: "Check the amount of disk space on the computer Jason is using.", isCorrect: false)
            ]
        )
        //------------NEW QUESTIONS FROM HERE------------
        ,
        Question(
            question: "Which of the following are default hidden shares under Windows Server 2003? (Choose three.)",
            options: [
                Option(answer: "SYSVOL", isCorrect: false),
                Option(answer: "ADMIN$", isCorrect: true),
                Option(answer: "CD$", isCorrect: false),
                Option(answer: "PRINTER$", isCorrect: false),
                Option(answer: "IPC$", isCorrect: true),
                Option(answer: "C$", isCorrect: true)
            ]
        ) ,
        Question(
            question: "What does the Shared Folders snap-in provide in terms of setting permissions for a new share that the Sharing tab of a foler's properties sheet does not offer?",
            options: [
                Option(answer: "Setting share permissions", isCorrect: false),
                Option(answer: "Publishing the share in active Directory", isCorrect: false),
                Option(answer: "Specifying offline settings", isCorrect: false),
                Option(answer: "Specifying both share permissions and NTFS permissions", isCorrect: true),
                Option(answer: "Specifying Web Sharing access permission", isCorrect: false)
            ]
        ) ,
        Question(
            question: "When both share permissions and NIFS permissions exist on the same shared folder, how is access control to the shared folder affected for users trying to access the files stored in the shared folder over the network?",
            options: [
                Option(answer: "NTFS permissions take precedence.", isCorrect: false),
                Option(answer: "Share permissions take precedence.", isCorrect: false),
                Option(answer: "The most liberal permissions take precedence.", isCorrect: false),
                Option(answer: "The most restrictive permissions take precedence", isCorrect: true)
            ]
        ) ,
        Question(
            question: "Which of the following characteristics apply to NTFS inherited permissions? (Choose three.)",
            options: [
                Option(answer: "Special permissions are inherited by default.", isCorrect: true),
                Option(answer: "Basic permissions are inherited by default.", isCorrect: true),
                Option(answer: "Explicit permissions are the same as inherited permissions.", isCorrect: false),
                Option(answer: "NTFS permissions are inherited by default.", isCorrect: true),
                Option(answer: "NTFS explicit permissions are not inherited by default.", isCorrect: false),
                Option(answer: "You cannot set explicit permissions on files.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "The basic NTFS permission, Modify, when set or a folder, consists of which of the following special permissions? (Choose three.)",
            options: [
                Option(answer: "List Folder/Read Data", isCorrect: true),
                Option(answer: "Create Files/Write Data", isCorrect: true),
                Option(answer: "Change Permissions", isCorrect: false),
                Option(answer: "Delete Subfolders and Files", isCorrect: false),
                Option(answer: "Take Ownership", isCorrect: false),
                Option(answer: "Write Extended Attributes", isCorrect: true)
            ]
        ) ,
        Question(
            question: "When you view NTFS effective permissions for a user or a group, which of the following permissions are displayed?",
            options: [
                Option(answer: "Basic permissions", isCorrect: false),
                Option(answer: "Special permissions", isCorrect: true),
                Option(answer: "Share permissions", isCorrect: false),
                Option(answer: "Not inherited permissions", isCorrect: false)
            ]
        ) ,
        Question(
            question: "In which of the following ways can ownership of an NTFS file or folder change? (Choose three.)",
            options: [
                Option(answer: "Any user who is a member of the Domain Users group can take ownership of any folder or file whether or not she has permissions to the folder or file.", isCorrect: false),
                Option(answer: "The current owner of a file or folder can assign the Take Ownership permission to another user for the file or folder; the other user must then take ownership of the object.", isCorrect: true),
                Option(answer: "A member of the Administrators group can assign ownership of a file or folder to another user.", isCorrect: true),
                Option(answer: "Any user who is granted the Restore Files and Directories user right can assign ownership of a file or folder to another user.", isCorrect: true),
                Option(answer: "Any member of the Backup Operators group can take ownership of any file or folder at any time.", isCorrect: false),
                Option(answer: "Any member of the Authenticated Users group can assign ownership of files or folders to another user at any time.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "You have an APPl folder on a Windows Server 2003 computer. Userl belongs to Groupl and Group2. Userl has no NTFS permissions assigned. Groupl has Allow Read NTES permission, and Group2 has Allow Modify NTFS permission. What permission does Userl have for the APP1 folder?",
            options: [
                Option(answer: "Allow Full Control NTFS permission", isCorrect: false),
                Option(answer: "Allow Modify NTFS permission", isCorrect: true),
                Option(answer: "Allow Read NTFS permission", isCorrect: false),
                Option(answer: "No access NTFS permission", isCorrect: false)
            ]
        ) ,
        Question(
            question: "You have an APP1 folder on a Windows Server 2003 computer. Userl belongs to Groupl and Group2. Userl has Allow Full Control NTES permission, and Group2 has Allow Modify NTES permission. Groupl has Deny Full Control NTFS permission. What permission does Userl have for the APP1 folder?",
            options: [
                Option(answer: "Allow Full Control", isCorrect: false),
                Option(answer: "Allow Modify", isCorrect: false),
                Option(answer: "Allow Read", isCorrect: false),
                Option(answer: "No access", isCorrect: true)
            ]
        ) ,
        Question(
            question: "On a Windows Server 2003 computer, you have a shared folder called DATA1. You apply the default share permissions and NTFS permissions to DATA1. You then create a folder called DATA2 in DATAl. You apply the default NTFS permissions to DATA2. When GROUP1 tries to add files to DATA2, they get an \"Access is denied\" ertor message. What do you need to do so that GROUP1 can create, modify, and delete files in DATA1 and DATA2? All other users must be able to read the files in DATAl and DATA2.",
            options: [
                Option(answer: "For the DATA1 folder, assign the Change share permission to the Everyone group. For the DATA2 folder, assign the Allow Write NTFS permission for GROUP1 group.", isCorrect: false),
                Option(answer: "For the DATA1 folder, assign the Change share permission to the GROUP1 group and assign the Allow Write NTFS permissions to the GROUP1 group.", isCorrect: false),
                Option(answer: "For the DATAl folder, assign the Change share permissions to the Everyone group and assign the Allow Modify NTFS permissions to the GROUP1 group.", isCorrect: false),
                Option(answer: "For the DATAl folder, assign the Change share permissions to the GROUP1 and assign the Allow Modify NTFS permissions to the GROUP1 group.", isCorrect: true)
            ]
        ) ,
        Question(
            question: "On a Windows Server 2003 computer, you have a shared folder called APP1. At this time. Joe does not belong to the Sales, Marketing, or Executive group. You set the NTFS and APP1 as shown in the following table: HERE SHOULD BE A TABLE (lern die Frage einfach auswendig) \n You want Joe to be able to make changes to the files in the APPI folder. What should you do?",
            options: [
                Option(answer: "Assign Joe to the Sales group and assign Allow Write NTFS permission to the Sales group.", isCorrect: true),
                Option(answer: "Assign Joe to the Executive group and assign the Allow Write NTFS permission to the Executive group.", isCorrect: false),
                Option(answer: "Assign Joe to the Executive group and assign the Change share permission to the Executive group.", isCorrect: false),
                Option(answer: "Assign the Full Control share permission to Everyone.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "Im Rahmen einer Konsolidierungsmaßnahme verschieben Sie eine Reihe freigegebener Ordner auf einen neuen 2003-Server. Nachdem Sie die Ordner samt Dateien per xcopy verschoben haben, nehmen Sie den Server in Produktionsbetrieb. Und schon klingelt Ihr Telefon und Benutzer beschweren sich, dass sie die Freigaben nicht sehen können. Wie beheben Sie dieses Problem?",
            options: [
                Option(answer: "Sie müssen die NTFS-Berechtigungen umkonfigurieren.", isCorrect: true),
                Option(answer: "Sie müssen die Freigabeberechtigungen umkonfigurieren.", isCorrect: true),
                Option(answer: "Sie müssen den Dienst Server auf dem neuen Server neu starten.", isCorrect: false),
                Option(answer: "Sie müssen die Freigaben erneut freigeben.", isCorrect: true),
                Option(answer: "Sie müssen den Freigaben eindeutige Namen geben", isCorrect: false)
            ]
        ) ,
        Question(
            question: "Die Assistentin des Geschäftsführers kündigt fristlos. In den persönlichen Ordnern der Assistentin gibt es mehrere Dateien, auf die der Geschäftsführer zugreifen muss. Die Ordner haben die folgende Berechtigung:\n" +
            "AssistentinGeschf: Vollzugriff\n" +
            "Alle ihre Ordner befinden sich auf einem Server, der mit NTFS formatiert ist. Wie geben Sie dem Geschäftsführer am schnellsten Zugriff auf diese Dateien?",
            options: [
                Option(answer: "Setzen Sie das Kennwort der Assistentin zurück. Geben Sie dem Geschäftsführer die Benutzerkennung und das neue Kennwort.", isCorrect: false),
                Option(answer: "Übertragen Sie die Besitzrechte der Ordner an den Geschäftsführer.", isCorrect: true),
                Option(answer: "Übernehmen Sie die Besitzrechte der Ordner und geben Sie dem Geschäftsführer Vollzugriff.", isCorrect: false),
                Option(answer: "Verschieben Sie die Dateien in die Ordner des Geschäftsführers.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "Der Ordner Verträge hat die folgenden Berechtigungen:\n" +
            "Freigabeberechtigungen:\n" +
            "Geschäftsführung: Vollzugriff\n" +
            "Rechtsabteilung: Ändern\n" +
            "Personalabteilung: Lesen\n" +
            "NTFS-Berechtigungen:\n" +
            "Geschäftsführung: Vollzugriff\n" +
            "Rechtsabteilung: Ändern\n" +
            "Personalabteilung: Lesen\n" +
            "Angenommen, Bernd ist Mitglied der Rechtsabteilung und der Personalabteilung. Wie lautet dann seine effektive Berechtigung über das Netzwerk?",
            options: [
                Option(answer: "Ändern (Freigabeberechtigung)", isCorrect: true),
                Option(answer: "Ändern (NTFS-Berechtigung)", isCorrect: false),
                Option(answer: "Lesen", isCorrect: false),
                Option(answer: "Vollzugriff", isCorrect: false)
            ]
        ) ,
        Question(
            question: "GPOs cannot be linked to which of the following?",
            options: [
                Option(answer: "Site", isCorrect: false),
                Option(answer: "Domain", isCorrect: false),
                Option(answer: "First Level Organizational units", isCorrect: false),
                Option(answer: "Second Level Organizational Units", isCorrect: false),
                Option(answer: "Groups", isCorrect: true)
            ]
        ) ,
        Question(
            question: "When you want to make sure that a domain GPO is not overwritten by an organizational unit GPO, what should you do?",
            options: [
                Option(answer: "Make sure that the organizational unit GPO is listed before the domain GPO", isCorrect: false),
                Option(answer: "Make sure to disable the organizational unit", isCorrect: false),
                Option(answer: "Make sure that the No Override option is selected for the domain GPO", isCorrect: true),
                Option(answer: "Enable block inheritance at the organizational unit", isCorrect: false)
            ]
        ) ,
        Question(
            question: "What permissions must a user have for a GPO to be linked? (Choose two.)",
            options: [
                Option(answer: "Read", isCorrect: true),
                Option(answer: "Write", isCorrect: false),
                Option(answer: "Apply group policy", isCorrect: true),
                Option(answer: "Administrative", isCorrect: false)
            ]
        ) ,
        Question(
            question: "If you do not want one user to be affected by a group policy, what can you do?",
            options: [
                Option(answer: "Create a new GPO that is assigned to the one user.", isCorrect: false),
                Option(answer: "Modify the GPO group policy.", isCorrect: false),
                Option(answer: "Add the user to the administrators group.", isCorrect: false),
                Option(answer: "Modify the GPO permissions so that the user is denied the Apply Group Policy permission to the GPO.", isCorrect: true)
            ]
        ) ,
        Question(
            question: "Which of the following can be affected by Group Policies?",
            options: [
                Option(answer: "Windows Me", isCorrect: false),
                Option(answer: "Windows NT", isCorrect: false),
                Option(answer: "Windows XP", isCorrect: true),
                Option(answer: "Windows 98", isCorrect: false)
            ]
        ) ,
        Question(
            question: "By default, if a group policy is in conflict with another group policy, what happens?",
            options: [
                Option(answer: "The first group policy stays in effect.", isCorrect: false),
                Option(answer: "The second GPO overwrites any settings from the first group policy.", isCorrect: true),
                Option(answer: "If the user is an administrator, the first group policy stays in effect.", isCorrect: false),
                Option(answer: "The domain level group policy stays in effect.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "When you set up a group policy to restrict what software can run on a computer, which of the following is not a parameter that can be used to identify the software?",
            options: [
                Option(answer: "Name and date of the executable", isCorrect: true),
                Option(answer: "Path of where the file is located", isCorrect: false),
                Option(answer: "A digital certificate", isCorrect: false),
                Option(answer: "A hash value", isCorrect: false),
                Option(answer: "A zone defined within Internet Explorer", isCorrect: false)            ]
        ) ,
        Question(
            question: "If you need to make a folder redirection based on groups, what do you have to do?",
            options: [
                Option(answer: "Configure basic redirection using group policy.", isCorrect: false),
                Option(answer: "Configure advanced redirection using group policy.", isCorrect: true),
                Option(answer: "Configure basic redirection using user's profile.", isCorrect: false),
                Option(answer: "Configure advanced redirection using user's profile.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "You want to change the wallpaper to one that includes a company logo. What do you do?",
            options: [
                Option(answer: "Configure an administrative template using group policy.", isCorrect: true),
                Option(answer: "Configure an administrative template using the Registry import function.", isCorrect: false),
                Option(answer: "Create a login script that copies the logo onto the Registry.", isCorrect: false),
                Option(answer: "Modify the Boot.ini file to point to the new company logo.", isCorrect: false)
            ]
        ) ,
        Question(
            question: "If you make a change to the group policy and you want the group policy to go into effect immediately, what do you have to do on a Windows Server 2003?",
            options: [
                Option(answer: "gpresult /Force", isCorrect: false),
                Option(answer: "secedit /Update", isCorrect: false),
                Option(answer: "gpupdate /Force", isCorrect: false),
                Option(answer: "gpupdate / Sync", isCorrect: true)
            ]
        ) ,
        Question(
            question: "If you want to see all group policies so that you can figure out where certain settings have come into play, what can you do?",
            options: [
                Option(answer: "gpshow", isCorrect: false),
                Option(answer: "secedit /show", isCorrect: false),
                Option(answer: "gpresult", isCorrect: true),
                Option(answer: "gpdupate /showall", isCorrect: false)
            ]
        ) ,
        Question(
            question: "Which folder is replicated between domain controllers?",
            options: [
                Option(answer: "Windows", isCorrect: false),
                Option(answer: "Windows\\System32", isCorrect: false),
                Option(answer: "Windows\\System", isCorrect: false),
                Option(answer: "SYSVOL", isCorrect: true)
            ]
        ) ,
        Question(
            question: "Where in the group policy settings would you configure computer startup and shutdown scripts?",
            options: [
                Option(answer: "Client configuration", isCorrect: false),
                Option(answer: "User configuration", isCorrect: false),
                Option(answer: "Startup configuration", isCorrect: false),
                Option(answer: "computer configuration", isCorrect: true)
            ]
        )
    ]
}
