VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Shortest Remaining Time First"
   ClientHeight    =   8025
   ClientLeft      =   2145
   ClientTop       =   1590
   ClientWidth     =   11655
   LinkTopic       =   "Form1"
   ScaleHeight     =   8025
   ScaleWidth      =   11655
   Begin VB.CommandButton Command5 
      Caption         =   "Compute"
      Height          =   495
      Left            =   6120
      TabIndex        =   628
      Top             =   3120
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   10200
      TabIndex        =   627
      Text            =   "0"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   10200
      TabIndex        =   626
      Text            =   "0"
      Top             =   4200
      Width           =   855
   End
   Begin VB.Timer Timer3 
      Interval        =   1000
      Left            =   4920
      Top             =   240
   End
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   5400
      Top             =   240
   End
   Begin VB.CommandButton Command4 
      Caption         =   "E&XIT"
      Height          =   615
      Left            =   6120
      TabIndex        =   620
      Top             =   3600
      Width           =   1815
   End
   Begin VB.Frame Frame2 
      Height          =   4455
      Left            =   2760
      TabIndex        =   99
      Top             =   1080
      Width           =   3255
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   120
         Top             =   120
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   16777215
         ImageWidth      =   100
         ImageHeight     =   75
         MaskColor       =   16777215
         UseMaskColor    =   0   'False
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   20
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":005E
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":00BC
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":011A
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0178
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":01D6
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0234
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0292
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":02F0
               Key             =   ""
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":034E
               Key             =   ""
            EndProperty
            BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":03AC
               Key             =   ""
            EndProperty
            BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":040A
               Key             =   ""
            EndProperty
            BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0468
               Key             =   ""
            EndProperty
            BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":04C6
               Key             =   ""
            EndProperty
            BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0524
               Key             =   ""
            EndProperty
            BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":0582
               Key             =   ""
            EndProperty
            BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":05E0
               Key             =   ""
            EndProperty
            BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":063E
               Key             =   ""
            EndProperty
            BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":069C
               Key             =   ""
            EndProperty
            BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SRTF.frx":06FA
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Label Label10 
         Caption         =   "BSCOE 511 (2006-2007)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H008080FF&
         Height          =   855
         Left            =   600
         TabIndex        =   629
         Top             =   3480
         Width           =   2055
      End
      Begin VB.Image Image1 
         BorderStyle     =   1  'Fixed Single
         Height          =   2895
         Left            =   120
         Picture         =   "SRTF.frx":0758
         Stretch         =   -1  'True
         Top             =   240
         Width           =   2895
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Grantt Chart"
      Height          =   615
      Left            =   6120
      TabIndex        =   14
      Top             =   2520
      Width           =   1815
   End
   Begin VB.ListBox List9 
      Height          =   4350
      Left            =   5520
      TabIndex        =   13
      Top             =   1080
      Width           =   495
   End
   Begin VB.ListBox List8 
      Height          =   4350
      Left            =   5040
      TabIndex        =   12
      Top             =   1080
      Width           =   495
   End
   Begin VB.ListBox List7 
      Height          =   4350
      Left            =   4440
      TabIndex        =   11
      Top             =   1080
      Width           =   615
   End
   Begin VB.ListBox List6 
      Height          =   4350
      Left            =   3840
      TabIndex        =   10
      Top             =   1080
      Width           =   615
   End
   Begin VB.ListBox List5 
      Height          =   4350
      Left            =   3360
      TabIndex        =   9
      Top             =   1080
      Width           =   495
   End
   Begin VB.ListBox listpro 
      BackColor       =   &H80000000&
      Height          =   2790
      Left            =   8040
      TabIndex        =   8
      Top             =   1080
      Width           =   975
   End
   Begin VB.ListBox List4 
      Height          =   4350
      Left            =   2880
      TabIndex        =   7
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Show table"
      Height          =   615
      Left            =   6120
      TabIndex        =   5
      Top             =   1920
      Width           =   1815
   End
   Begin VB.ListBox List3 
      BackColor       =   &H80000000&
      Height          =   2790
      Left            =   10200
      TabIndex        =   4
      Top             =   1080
      Width           =   1095
   End
   Begin VB.ListBox List2 
      BackColor       =   &H80000000&
      Height          =   2790
      Left            =   9120
      TabIndex        =   3
      Top             =   1080
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Simulate"
      Height          =   735
      Left            =   6120
      TabIndex        =   2
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   7200
      Top             =   6240
   End
   Begin VB.ListBox List1 
      BackColor       =   &H80000000&
      Height          =   4350
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   2295
   End
   Begin VB.Label Label14 
      Caption         =   "Average Turnaround Time"
      Height          =   255
      Left            =   8040
      TabIndex        =   625
      Top             =   4680
      Width           =   2055
   End
   Begin VB.Label Label12 
      Caption         =   "Average Waiting Time"
      Height          =   375
      Left            =   8040
      TabIndex        =   624
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "0"
      Height          =   495
      Left            =   6000
      TabIndex        =   623
      Top             =   240
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "Special thanks to Planet Source Code"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   24000
      TabIndex        =   622
      Top             =   240
      Width           =   5055
   End
   Begin VB.Label Label1 
      Caption         =   "T.H Sison ""SWORDFISH"""
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4560
      TabIndex        =   621
      Top             =   7560
      Width           =   4455
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   150
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   150
      Left            =   8040
      TabIndex        =   619
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   150
      Left            =   480
      TabIndex        =   618
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   150
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   150
      Left            =   0
      TabIndex        =   617
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   150
      Left            =   0
      TabIndex        =   616
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   149
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   149
      Left            =   8040
      TabIndex        =   615
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   149
      Left            =   480
      TabIndex        =   614
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   149
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   149
      Left            =   0
      TabIndex        =   613
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   149
      Left            =   0
      TabIndex        =   612
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   148
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   148
      Left            =   8040
      TabIndex        =   611
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   148
      Left            =   480
      TabIndex        =   610
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   148
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   148
      Left            =   0
      TabIndex        =   609
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   148
      Left            =   0
      TabIndex        =   608
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   147
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   147
      Left            =   8040
      TabIndex        =   607
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   147
      Left            =   480
      TabIndex        =   606
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   147
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   147
      Left            =   0
      TabIndex        =   605
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   147
      Left            =   0
      TabIndex        =   604
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   146
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   146
      Left            =   8040
      TabIndex        =   603
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   146
      Left            =   480
      TabIndex        =   602
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   146
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   146
      Left            =   0
      TabIndex        =   601
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   146
      Left            =   0
      TabIndex        =   600
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   145
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   145
      Left            =   8040
      TabIndex        =   599
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   145
      Left            =   480
      TabIndex        =   598
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   145
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   145
      Left            =   0
      TabIndex        =   597
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   145
      Left            =   0
      TabIndex        =   596
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   144
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   144
      Left            =   8040
      TabIndex        =   595
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   144
      Left            =   480
      TabIndex        =   594
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   144
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   144
      Left            =   0
      TabIndex        =   593
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   144
      Left            =   0
      TabIndex        =   592
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   143
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   143
      Left            =   8040
      TabIndex        =   591
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   143
      Left            =   480
      TabIndex        =   590
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   143
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   143
      Left            =   0
      TabIndex        =   589
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   143
      Left            =   0
      TabIndex        =   588
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   142
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   142
      Left            =   8040
      TabIndex        =   587
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   142
      Left            =   480
      TabIndex        =   586
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   142
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   142
      Left            =   0
      TabIndex        =   585
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   142
      Left            =   0
      TabIndex        =   584
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   141
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   141
      Left            =   8040
      TabIndex        =   583
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   141
      Left            =   480
      TabIndex        =   582
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   141
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   141
      Left            =   0
      TabIndex        =   581
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   141
      Left            =   0
      TabIndex        =   580
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   140
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   140
      Left            =   8040
      TabIndex        =   579
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   140
      Left            =   480
      TabIndex        =   578
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   140
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   140
      Left            =   0
      TabIndex        =   577
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   140
      Left            =   0
      TabIndex        =   576
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   139
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   139
      Left            =   8040
      TabIndex        =   575
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   139
      Left            =   480
      TabIndex        =   574
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   139
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   139
      Left            =   0
      TabIndex        =   573
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   139
      Left            =   0
      TabIndex        =   572
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   138
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   138
      Left            =   8040
      TabIndex        =   571
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   138
      Left            =   480
      TabIndex        =   570
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   138
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   138
      Left            =   0
      TabIndex        =   569
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   138
      Left            =   0
      TabIndex        =   568
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   137
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   137
      Left            =   8040
      TabIndex        =   567
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   137
      Left            =   480
      TabIndex        =   566
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   137
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   137
      Left            =   0
      TabIndex        =   565
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   137
      Left            =   0
      TabIndex        =   564
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   136
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   136
      Left            =   8040
      TabIndex        =   563
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   136
      Left            =   480
      TabIndex        =   562
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   136
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   136
      Left            =   0
      TabIndex        =   561
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   136
      Left            =   0
      TabIndex        =   560
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   135
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   135
      Left            =   8040
      TabIndex        =   559
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   135
      Left            =   480
      TabIndex        =   558
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   135
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   135
      Left            =   0
      TabIndex        =   557
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   135
      Left            =   0
      TabIndex        =   556
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   134
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   134
      Left            =   8040
      TabIndex        =   555
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   134
      Left            =   480
      TabIndex        =   554
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   134
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   134
      Left            =   0
      TabIndex        =   553
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   134
      Left            =   0
      TabIndex        =   552
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   133
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   133
      Left            =   8040
      TabIndex        =   551
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   133
      Left            =   480
      TabIndex        =   550
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   133
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   133
      Left            =   0
      TabIndex        =   549
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   133
      Left            =   0
      TabIndex        =   548
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   132
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   132
      Left            =   8040
      TabIndex        =   547
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   132
      Left            =   480
      TabIndex        =   546
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   132
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   132
      Left            =   0
      TabIndex        =   545
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   132
      Left            =   0
      TabIndex        =   544
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   131
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   131
      Left            =   8040
      TabIndex        =   543
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   131
      Left            =   480
      TabIndex        =   542
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   131
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   131
      Left            =   0
      TabIndex        =   541
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   131
      Left            =   0
      TabIndex        =   540
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   130
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   130
      Left            =   8040
      TabIndex        =   539
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   130
      Left            =   480
      TabIndex        =   538
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   130
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   130
      Left            =   0
      TabIndex        =   537
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   130
      Left            =   0
      TabIndex        =   536
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   129
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   129
      Left            =   8040
      TabIndex        =   535
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   129
      Left            =   480
      TabIndex        =   534
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   129
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   129
      Left            =   0
      TabIndex        =   533
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   129
      Left            =   0
      TabIndex        =   532
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   128
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   128
      Left            =   8040
      TabIndex        =   531
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   128
      Left            =   480
      TabIndex        =   530
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   128
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   128
      Left            =   0
      TabIndex        =   529
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   128
      Left            =   0
      TabIndex        =   528
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   127
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   127
      Left            =   8040
      TabIndex        =   527
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   127
      Left            =   480
      TabIndex        =   526
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   127
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   127
      Left            =   0
      TabIndex        =   525
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   127
      Left            =   0
      TabIndex        =   524
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   126
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   126
      Left            =   8040
      TabIndex        =   523
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   126
      Left            =   480
      TabIndex        =   522
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   126
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   126
      Left            =   0
      TabIndex        =   521
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   126
      Left            =   0
      TabIndex        =   520
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   125
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   125
      Left            =   8040
      TabIndex        =   519
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   125
      Left            =   480
      TabIndex        =   518
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   125
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   125
      Left            =   0
      TabIndex        =   517
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   125
      Left            =   0
      TabIndex        =   516
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   124
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   124
      Left            =   8040
      TabIndex        =   515
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   124
      Left            =   480
      TabIndex        =   514
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   124
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   124
      Left            =   0
      TabIndex        =   513
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   124
      Left            =   0
      TabIndex        =   512
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   123
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   123
      Left            =   8040
      TabIndex        =   511
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   123
      Left            =   480
      TabIndex        =   510
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   123
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   123
      Left            =   0
      TabIndex        =   509
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   123
      Left            =   0
      TabIndex        =   508
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   122
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   122
      Left            =   8040
      TabIndex        =   507
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   122
      Left            =   480
      TabIndex        =   506
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   122
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   122
      Left            =   0
      TabIndex        =   505
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   122
      Left            =   0
      TabIndex        =   504
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   121
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   121
      Left            =   8040
      TabIndex        =   503
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   121
      Left            =   480
      TabIndex        =   502
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   121
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   121
      Left            =   0
      TabIndex        =   501
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   121
      Left            =   0
      TabIndex        =   500
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   120
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   120
      Left            =   8040
      TabIndex        =   499
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   120
      Left            =   480
      TabIndex        =   498
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   120
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   120
      Left            =   0
      TabIndex        =   497
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   120
      Left            =   0
      TabIndex        =   496
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   119
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   119
      Left            =   8040
      TabIndex        =   495
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   119
      Left            =   480
      TabIndex        =   494
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   119
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   119
      Left            =   0
      TabIndex        =   493
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   119
      Left            =   0
      TabIndex        =   492
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   118
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   118
      Left            =   8040
      TabIndex        =   491
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   118
      Left            =   480
      TabIndex        =   490
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   118
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   118
      Left            =   0
      TabIndex        =   489
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   118
      Left            =   0
      TabIndex        =   488
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   117
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   117
      Left            =   8040
      TabIndex        =   487
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   117
      Left            =   480
      TabIndex        =   486
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   117
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   117
      Left            =   0
      TabIndex        =   485
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   117
      Left            =   0
      TabIndex        =   484
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   116
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   116
      Left            =   8040
      TabIndex        =   483
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   116
      Left            =   480
      TabIndex        =   482
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   116
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   116
      Left            =   0
      TabIndex        =   481
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   116
      Left            =   0
      TabIndex        =   480
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   115
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   115
      Left            =   8040
      TabIndex        =   479
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   115
      Left            =   480
      TabIndex        =   478
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   115
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   115
      Left            =   0
      TabIndex        =   477
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   115
      Left            =   0
      TabIndex        =   476
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   114
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   114
      Left            =   8040
      TabIndex        =   475
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   114
      Left            =   480
      TabIndex        =   474
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   114
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   114
      Left            =   0
      TabIndex        =   473
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   114
      Left            =   0
      TabIndex        =   472
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   113
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   113
      Left            =   8040
      TabIndex        =   471
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   113
      Left            =   480
      TabIndex        =   470
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   113
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   113
      Left            =   0
      TabIndex        =   469
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   113
      Left            =   0
      TabIndex        =   468
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   112
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   112
      Left            =   8040
      TabIndex        =   467
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   112
      Left            =   480
      TabIndex        =   466
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   112
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   112
      Left            =   0
      TabIndex        =   465
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   112
      Left            =   0
      TabIndex        =   464
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   111
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   111
      Left            =   8040
      TabIndex        =   463
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   111
      Left            =   480
      TabIndex        =   462
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   111
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   111
      Left            =   0
      TabIndex        =   461
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   111
      Left            =   0
      TabIndex        =   460
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   110
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   110
      Left            =   8040
      TabIndex        =   459
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   110
      Left            =   480
      TabIndex        =   458
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   110
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   110
      Left            =   0
      TabIndex        =   457
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   110
      Left            =   0
      TabIndex        =   456
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   109
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   109
      Left            =   8040
      TabIndex        =   455
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   109
      Left            =   480
      TabIndex        =   454
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   109
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   109
      Left            =   0
      TabIndex        =   453
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   109
      Left            =   0
      TabIndex        =   452
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   108
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   108
      Left            =   8040
      TabIndex        =   451
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   108
      Left            =   480
      TabIndex        =   450
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   108
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   108
      Left            =   0
      TabIndex        =   449
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   108
      Left            =   0
      TabIndex        =   448
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   107
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   107
      Left            =   8040
      TabIndex        =   447
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   107
      Left            =   480
      TabIndex        =   446
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   107
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   107
      Left            =   0
      TabIndex        =   445
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   107
      Left            =   0
      TabIndex        =   444
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   106
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   106
      Left            =   8040
      TabIndex        =   443
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   106
      Left            =   480
      TabIndex        =   442
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   106
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   106
      Left            =   0
      TabIndex        =   441
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   106
      Left            =   0
      TabIndex        =   440
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   105
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   105
      Left            =   8040
      TabIndex        =   439
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   105
      Left            =   480
      TabIndex        =   438
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   105
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   105
      Left            =   0
      TabIndex        =   437
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   105
      Left            =   0
      TabIndex        =   436
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   104
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   104
      Left            =   8040
      TabIndex        =   435
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   104
      Left            =   480
      TabIndex        =   434
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   104
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   104
      Left            =   0
      TabIndex        =   433
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   104
      Left            =   0
      TabIndex        =   432
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   103
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   103
      Left            =   8040
      TabIndex        =   431
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   103
      Left            =   480
      TabIndex        =   430
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   103
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   103
      Left            =   0
      TabIndex        =   429
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   103
      Left            =   0
      TabIndex        =   428
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   102
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   102
      Left            =   8040
      TabIndex        =   427
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   102
      Left            =   480
      TabIndex        =   426
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   102
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   102
      Left            =   0
      TabIndex        =   425
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   102
      Left            =   0
      TabIndex        =   424
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   101
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   101
      Left            =   8040
      TabIndex        =   423
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   101
      Left            =   480
      TabIndex        =   422
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   101
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   101
      Left            =   0
      TabIndex        =   421
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   101
      Left            =   0
      TabIndex        =   420
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   100
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   100
      Left            =   8040
      TabIndex        =   419
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   100
      Left            =   480
      TabIndex        =   418
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   100
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   100
      Left            =   0
      TabIndex        =   417
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   100
      Left            =   0
      TabIndex        =   416
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   99
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   99
      Left            =   8040
      TabIndex        =   415
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   99
      Left            =   480
      TabIndex        =   414
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   99
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   99
      Left            =   0
      TabIndex        =   413
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   99
      Left            =   0
      TabIndex        =   412
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   98
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   98
      Left            =   8040
      TabIndex        =   411
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   98
      Left            =   480
      TabIndex        =   410
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   98
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   98
      Left            =   0
      TabIndex        =   409
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   98
      Left            =   0
      TabIndex        =   408
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   97
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   97
      Left            =   8040
      TabIndex        =   407
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   97
      Left            =   480
      TabIndex        =   406
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   97
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   97
      Left            =   0
      TabIndex        =   405
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   97
      Left            =   0
      TabIndex        =   404
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   96
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   96
      Left            =   8040
      TabIndex        =   403
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   96
      Left            =   480
      TabIndex        =   402
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   96
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   96
      Left            =   0
      TabIndex        =   401
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   96
      Left            =   0
      TabIndex        =   400
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   95
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   95
      Left            =   8040
      TabIndex        =   399
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   95
      Left            =   480
      TabIndex        =   398
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   95
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   95
      Left            =   0
      TabIndex        =   397
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   95
      Left            =   0
      TabIndex        =   396
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   94
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   94
      Left            =   8040
      TabIndex        =   395
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   94
      Left            =   480
      TabIndex        =   394
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   94
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   94
      Left            =   0
      TabIndex        =   393
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   94
      Left            =   0
      TabIndex        =   392
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   93
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   93
      Left            =   8040
      TabIndex        =   391
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   93
      Left            =   480
      TabIndex        =   390
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   93
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   93
      Left            =   0
      TabIndex        =   389
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   93
      Left            =   0
      TabIndex        =   388
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   92
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   92
      Left            =   8040
      TabIndex        =   387
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   92
      Left            =   480
      TabIndex        =   386
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   92
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   92
      Left            =   0
      TabIndex        =   385
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   92
      Left            =   0
      TabIndex        =   384
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   91
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   91
      Left            =   8040
      TabIndex        =   383
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   91
      Left            =   480
      TabIndex        =   382
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   91
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   91
      Left            =   0
      TabIndex        =   381
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   91
      Left            =   0
      TabIndex        =   380
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   90
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   90
      Left            =   8040
      TabIndex        =   379
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   90
      Left            =   480
      TabIndex        =   378
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   90
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   90
      Left            =   0
      TabIndex        =   377
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   90
      Left            =   0
      TabIndex        =   376
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   89
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   89
      Left            =   8040
      TabIndex        =   375
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   89
      Left            =   480
      TabIndex        =   374
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   89
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   89
      Left            =   0
      TabIndex        =   373
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   89
      Left            =   0
      TabIndex        =   372
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   88
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   88
      Left            =   8040
      TabIndex        =   371
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   88
      Left            =   480
      TabIndex        =   370
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   88
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   88
      Left            =   0
      TabIndex        =   369
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   88
      Left            =   0
      TabIndex        =   368
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   87
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   87
      Left            =   8040
      TabIndex        =   367
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   87
      Left            =   480
      TabIndex        =   366
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   87
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   87
      Left            =   0
      TabIndex        =   365
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   87
      Left            =   0
      TabIndex        =   364
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   86
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   86
      Left            =   8040
      TabIndex        =   363
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   86
      Left            =   480
      TabIndex        =   362
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   86
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   86
      Left            =   0
      TabIndex        =   361
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   86
      Left            =   0
      TabIndex        =   360
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   85
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   85
      Left            =   8040
      TabIndex        =   359
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   85
      Left            =   480
      TabIndex        =   358
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   85
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   85
      Left            =   0
      TabIndex        =   357
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   85
      Left            =   0
      TabIndex        =   356
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   84
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   84
      Left            =   8040
      TabIndex        =   355
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   84
      Left            =   480
      TabIndex        =   354
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   84
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   84
      Left            =   0
      TabIndex        =   353
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   84
      Left            =   0
      TabIndex        =   352
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   83
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   83
      Left            =   8040
      TabIndex        =   351
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   83
      Left            =   480
      TabIndex        =   350
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   83
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   83
      Left            =   0
      TabIndex        =   349
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   83
      Left            =   0
      TabIndex        =   348
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   82
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   82
      Left            =   8040
      TabIndex        =   347
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   82
      Left            =   480
      TabIndex        =   346
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   82
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   82
      Left            =   0
      TabIndex        =   345
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   82
      Left            =   0
      TabIndex        =   344
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   81
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   81
      Left            =   8040
      TabIndex        =   343
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   81
      Left            =   480
      TabIndex        =   342
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   81
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   81
      Left            =   0
      TabIndex        =   341
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   81
      Left            =   0
      TabIndex        =   340
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   80
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   80
      Left            =   8040
      TabIndex        =   339
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   80
      Left            =   480
      TabIndex        =   338
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   80
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   80
      Left            =   0
      TabIndex        =   337
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   80
      Left            =   0
      TabIndex        =   336
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   79
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   79
      Left            =   8040
      TabIndex        =   335
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   79
      Left            =   480
      TabIndex        =   334
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   79
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   79
      Left            =   0
      TabIndex        =   333
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   79
      Left            =   0
      TabIndex        =   332
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   78
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   78
      Left            =   8040
      TabIndex        =   331
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   78
      Left            =   480
      TabIndex        =   330
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   78
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   78
      Left            =   0
      TabIndex        =   329
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   78
      Left            =   0
      TabIndex        =   328
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   77
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   77
      Left            =   8040
      TabIndex        =   327
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   77
      Left            =   480
      TabIndex        =   326
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   77
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   77
      Left            =   0
      TabIndex        =   325
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   77
      Left            =   0
      TabIndex        =   324
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   76
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   76
      Left            =   8040
      TabIndex        =   323
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   76
      Left            =   480
      TabIndex        =   322
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   76
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   76
      Left            =   0
      TabIndex        =   321
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   76
      Left            =   0
      TabIndex        =   320
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   75
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   75
      Left            =   8040
      TabIndex        =   319
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   75
      Left            =   480
      TabIndex        =   318
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   75
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   75
      Left            =   0
      TabIndex        =   317
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   75
      Left            =   0
      TabIndex        =   316
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   74
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   74
      Left            =   8040
      TabIndex        =   315
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   74
      Left            =   480
      TabIndex        =   314
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   74
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   74
      Left            =   0
      TabIndex        =   313
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   74
      Left            =   0
      TabIndex        =   312
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   73
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   73
      Left            =   8040
      TabIndex        =   311
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   73
      Left            =   480
      TabIndex        =   310
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   73
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   73
      Left            =   0
      TabIndex        =   309
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   73
      Left            =   0
      TabIndex        =   308
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   72
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   72
      Left            =   8040
      TabIndex        =   307
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   72
      Left            =   480
      TabIndex        =   306
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   72
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   72
      Left            =   0
      TabIndex        =   305
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   72
      Left            =   0
      TabIndex        =   304
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   71
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   71
      Left            =   8040
      TabIndex        =   303
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   71
      Left            =   480
      TabIndex        =   302
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   71
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   71
      Left            =   0
      TabIndex        =   301
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   71
      Left            =   0
      TabIndex        =   300
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   70
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   70
      Left            =   8040
      TabIndex        =   299
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   70
      Left            =   480
      TabIndex        =   298
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   70
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   70
      Left            =   0
      TabIndex        =   297
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   70
      Left            =   0
      TabIndex        =   296
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   69
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   69
      Left            =   8040
      TabIndex        =   295
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   69
      Left            =   480
      TabIndex        =   294
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   69
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   69
      Left            =   0
      TabIndex        =   293
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   69
      Left            =   0
      TabIndex        =   292
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   68
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   68
      Left            =   8040
      TabIndex        =   291
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   68
      Left            =   480
      TabIndex        =   290
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   68
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   68
      Left            =   0
      TabIndex        =   289
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   68
      Left            =   0
      TabIndex        =   288
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   67
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   67
      Left            =   8040
      TabIndex        =   287
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   67
      Left            =   480
      TabIndex        =   286
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   67
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   67
      Left            =   0
      TabIndex        =   285
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   67
      Left            =   0
      TabIndex        =   284
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   66
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   66
      Left            =   8040
      TabIndex        =   283
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   66
      Left            =   480
      TabIndex        =   282
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   66
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   66
      Left            =   0
      TabIndex        =   281
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   66
      Left            =   0
      TabIndex        =   280
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   65
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   65
      Left            =   8040
      TabIndex        =   279
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   65
      Left            =   480
      TabIndex        =   278
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   65
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   65
      Left            =   0
      TabIndex        =   277
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   65
      Left            =   0
      TabIndex        =   276
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   64
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   64
      Left            =   8040
      TabIndex        =   275
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   64
      Left            =   480
      TabIndex        =   274
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   64
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   64
      Left            =   0
      TabIndex        =   273
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   64
      Left            =   0
      TabIndex        =   272
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   63
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   63
      Left            =   8040
      TabIndex        =   271
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   63
      Left            =   480
      TabIndex        =   270
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   63
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   63
      Left            =   0
      TabIndex        =   269
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   63
      Left            =   0
      TabIndex        =   268
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   62
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   62
      Left            =   8040
      TabIndex        =   267
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   62
      Left            =   480
      TabIndex        =   266
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   62
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   62
      Left            =   0
      TabIndex        =   265
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   62
      Left            =   0
      TabIndex        =   264
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   61
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   61
      Left            =   8040
      TabIndex        =   263
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   61
      Left            =   480
      TabIndex        =   262
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   61
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   61
      Left            =   0
      TabIndex        =   261
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   61
      Left            =   0
      TabIndex        =   260
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   60
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   60
      Left            =   8040
      TabIndex        =   259
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   60
      Left            =   480
      TabIndex        =   258
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   60
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   60
      Left            =   0
      TabIndex        =   257
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   60
      Left            =   0
      TabIndex        =   256
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   59
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   59
      Left            =   8040
      TabIndex        =   255
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   59
      Left            =   480
      TabIndex        =   254
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   59
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   59
      Left            =   0
      TabIndex        =   253
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   59
      Left            =   0
      TabIndex        =   252
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   58
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   58
      Left            =   8040
      TabIndex        =   251
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   58
      Left            =   480
      TabIndex        =   250
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   58
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   58
      Left            =   0
      TabIndex        =   249
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   58
      Left            =   0
      TabIndex        =   248
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   57
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   57
      Left            =   8040
      TabIndex        =   247
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   57
      Left            =   480
      TabIndex        =   246
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   57
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   57
      Left            =   0
      TabIndex        =   245
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   57
      Left            =   0
      TabIndex        =   244
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   56
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   56
      Left            =   8040
      TabIndex        =   243
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   56
      Left            =   480
      TabIndex        =   242
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   56
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   56
      Left            =   0
      TabIndex        =   241
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   56
      Left            =   0
      TabIndex        =   240
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   55
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   55
      Left            =   8040
      TabIndex        =   239
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   55
      Left            =   480
      TabIndex        =   238
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   55
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   55
      Left            =   0
      TabIndex        =   237
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   55
      Left            =   0
      TabIndex        =   236
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   54
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   54
      Left            =   8040
      TabIndex        =   235
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   54
      Left            =   480
      TabIndex        =   234
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   54
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   54
      Left            =   0
      TabIndex        =   233
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   54
      Left            =   0
      TabIndex        =   232
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   53
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   53
      Left            =   8040
      TabIndex        =   231
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   53
      Left            =   480
      TabIndex        =   230
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   53
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   53
      Left            =   0
      TabIndex        =   229
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   53
      Left            =   0
      TabIndex        =   228
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   52
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   52
      Left            =   8040
      TabIndex        =   227
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   52
      Left            =   480
      TabIndex        =   226
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   52
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   52
      Left            =   0
      TabIndex        =   225
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   52
      Left            =   0
      TabIndex        =   224
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   51
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   51
      Left            =   8040
      TabIndex        =   223
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   51
      Left            =   480
      TabIndex        =   222
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   51
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   51
      Left            =   0
      TabIndex        =   221
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   51
      Left            =   0
      TabIndex        =   220
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   50
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   50
      Left            =   8040
      TabIndex        =   219
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   50
      Left            =   480
      TabIndex        =   218
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   50
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   50
      Left            =   0
      TabIndex        =   217
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   50
      Left            =   0
      TabIndex        =   216
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   49
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   49
      Left            =   8040
      TabIndex        =   215
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   49
      Left            =   480
      TabIndex        =   214
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   49
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   49
      Left            =   0
      TabIndex        =   213
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   49
      Left            =   0
      TabIndex        =   212
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   48
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   48
      Left            =   8040
      TabIndex        =   211
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   48
      Left            =   480
      TabIndex        =   210
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   48
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   48
      Left            =   0
      TabIndex        =   209
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   48
      Left            =   0
      TabIndex        =   208
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   47
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   47
      Left            =   8040
      TabIndex        =   207
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   47
      Left            =   480
      TabIndex        =   206
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   47
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   47
      Left            =   0
      TabIndex        =   205
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   47
      Left            =   0
      TabIndex        =   204
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   46
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   46
      Left            =   8040
      TabIndex        =   203
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   46
      Left            =   480
      TabIndex        =   202
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   46
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   46
      Left            =   0
      TabIndex        =   201
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   46
      Left            =   0
      TabIndex        =   200
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   45
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   45
      Left            =   8040
      TabIndex        =   199
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   45
      Left            =   480
      TabIndex        =   198
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   45
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   45
      Left            =   0
      TabIndex        =   197
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   45
      Left            =   0
      TabIndex        =   196
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   44
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   44
      Left            =   8040
      TabIndex        =   195
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   44
      Left            =   480
      TabIndex        =   194
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   44
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   44
      Left            =   0
      TabIndex        =   193
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   44
      Left            =   0
      TabIndex        =   192
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   43
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   43
      Left            =   8040
      TabIndex        =   191
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   43
      Left            =   480
      TabIndex        =   190
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   43
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   43
      Left            =   0
      TabIndex        =   189
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   43
      Left            =   0
      TabIndex        =   188
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   42
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   42
      Left            =   8040
      TabIndex        =   187
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   42
      Left            =   480
      TabIndex        =   186
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   42
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   42
      Left            =   0
      TabIndex        =   185
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   42
      Left            =   0
      TabIndex        =   184
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   41
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   41
      Left            =   8040
      TabIndex        =   183
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   41
      Left            =   480
      TabIndex        =   182
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   41
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   41
      Left            =   0
      TabIndex        =   181
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   41
      Left            =   0
      TabIndex        =   180
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   40
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   40
      Left            =   8040
      TabIndex        =   179
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   40
      Left            =   480
      TabIndex        =   178
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   40
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   40
      Left            =   0
      TabIndex        =   177
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   40
      Left            =   0
      TabIndex        =   176
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   39
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   39
      Left            =   8040
      TabIndex        =   175
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   39
      Left            =   480
      TabIndex        =   174
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   39
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   39
      Left            =   0
      TabIndex        =   173
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   39
      Left            =   0
      TabIndex        =   172
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   38
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   38
      Left            =   8040
      TabIndex        =   171
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   38
      Left            =   480
      TabIndex        =   170
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   38
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   38
      Left            =   0
      TabIndex        =   169
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   38
      Left            =   0
      TabIndex        =   168
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   37
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   37
      Left            =   8040
      TabIndex        =   167
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   37
      Left            =   480
      TabIndex        =   166
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   37
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   37
      Left            =   0
      TabIndex        =   165
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   37
      Left            =   0
      TabIndex        =   164
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   36
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   36
      Left            =   8040
      TabIndex        =   163
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   36
      Left            =   480
      TabIndex        =   162
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   36
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   36
      Left            =   0
      TabIndex        =   161
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   36
      Left            =   0
      TabIndex        =   160
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   35
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   35
      Left            =   8040
      TabIndex        =   159
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   35
      Left            =   480
      TabIndex        =   158
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   35
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   35
      Left            =   0
      TabIndex        =   157
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   35
      Left            =   0
      TabIndex        =   156
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   34
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   34
      Left            =   8040
      TabIndex        =   155
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   34
      Left            =   480
      TabIndex        =   154
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   34
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   34
      Left            =   0
      TabIndex        =   153
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   34
      Left            =   0
      TabIndex        =   152
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   33
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   33
      Left            =   8040
      TabIndex        =   151
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   33
      Left            =   480
      TabIndex        =   150
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   33
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   33
      Left            =   0
      TabIndex        =   149
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   33
      Left            =   0
      TabIndex        =   148
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   32
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   32
      Left            =   8040
      TabIndex        =   147
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   32
      Left            =   480
      TabIndex        =   146
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   32
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   32
      Left            =   0
      TabIndex        =   145
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   32
      Left            =   0
      TabIndex        =   144
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   31
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   31
      Left            =   8040
      TabIndex        =   143
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   31
      Left            =   480
      TabIndex        =   142
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   31
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   31
      Left            =   0
      TabIndex        =   141
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   31
      Left            =   0
      TabIndex        =   140
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   30
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   30
      Left            =   8040
      TabIndex        =   139
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   30
      Left            =   480
      TabIndex        =   138
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   30
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   30
      Left            =   0
      TabIndex        =   137
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   30
      Left            =   0
      TabIndex        =   136
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   29
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   29
      Left            =   8040
      TabIndex        =   135
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   29
      Left            =   480
      TabIndex        =   134
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   29
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   29
      Left            =   0
      TabIndex        =   133
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   29
      Left            =   0
      TabIndex        =   132
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   28
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   28
      Left            =   8040
      TabIndex        =   131
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   28
      Left            =   480
      TabIndex        =   130
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   28
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   28
      Left            =   0
      TabIndex        =   129
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   28
      Left            =   0
      TabIndex        =   128
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   27
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   27
      Left            =   8040
      TabIndex        =   127
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   27
      Left            =   480
      TabIndex        =   126
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   27
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   27
      Left            =   0
      TabIndex        =   125
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   27
      Left            =   0
      TabIndex        =   124
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   26
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   26
      Left            =   8040
      TabIndex        =   123
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   26
      Left            =   480
      TabIndex        =   122
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   26
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   26
      Left            =   0
      TabIndex        =   121
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   26
      Left            =   0
      TabIndex        =   120
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   25
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   25
      Left            =   8040
      TabIndex        =   119
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   25
      Left            =   480
      TabIndex        =   118
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   25
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   25
      Left            =   0
      TabIndex        =   117
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   25
      Left            =   0
      TabIndex        =   116
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   24
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   24
      Left            =   8040
      TabIndex        =   115
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   24
      Left            =   480
      TabIndex        =   114
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   24
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   24
      Left            =   0
      TabIndex        =   113
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   24
      Left            =   0
      TabIndex        =   112
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   23
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   23
      Left            =   8040
      TabIndex        =   111
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   23
      Left            =   480
      TabIndex        =   110
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   23
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   23
      Left            =   0
      TabIndex        =   109
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   23
      Left            =   0
      TabIndex        =   108
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   22
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   22
      Left            =   8040
      TabIndex        =   107
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   22
      Left            =   480
      TabIndex        =   106
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   22
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   22
      Left            =   0
      TabIndex        =   105
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   22
      Left            =   0
      TabIndex        =   104
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   21
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   21
      Left            =   8040
      TabIndex        =   103
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   21
      Left            =   480
      TabIndex        =   102
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   21
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   21
      Left            =   0
      TabIndex        =   101
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   21
      Left            =   0
      TabIndex        =   100
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   20
      Left            =   0
      TabIndex        =   98
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   19
      Left            =   0
      TabIndex        =   97
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   18
      Left            =   0
      TabIndex        =   96
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   17
      Left            =   0
      TabIndex        =   95
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   16
      Left            =   0
      TabIndex        =   94
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   15
      Left            =   0
      TabIndex        =   93
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   14
      Left            =   0
      TabIndex        =   92
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   13
      Left            =   0
      TabIndex        =   91
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   12
      Left            =   0
      TabIndex        =   90
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   11
      Left            =   0
      TabIndex        =   89
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   10
      Left            =   0
      TabIndex        =   88
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   9
      Left            =   0
      TabIndex        =   87
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   8
      Left            =   0
      TabIndex        =   86
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   7
      Left            =   0
      TabIndex        =   85
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   6
      Left            =   0
      TabIndex        =   84
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   5
      Left            =   0
      TabIndex        =   83
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   4
      Left            =   0
      TabIndex        =   82
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   81
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   2
      Left            =   0
      TabIndex        =   80
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "idle"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   1
      Left            =   0
      TabIndex        =   79
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   20
      Left            =   -360
      TabIndex        =   78
      Top             =   6480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   19
      Left            =   0
      TabIndex        =   77
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   18
      Left            =   0
      TabIndex        =   76
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   17
      Left            =   0
      TabIndex        =   75
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   16
      Left            =   0
      TabIndex        =   74
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   15
      Left            =   0
      TabIndex        =   73
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   14
      Left            =   0
      TabIndex        =   72
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   13
      Left            =   0
      TabIndex        =   71
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   12
      Left            =   0
      TabIndex        =   70
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   11
      Left            =   0
      TabIndex        =   69
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   10
      Left            =   0
      TabIndex        =   68
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   9
      Left            =   0
      TabIndex        =   67
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   8
      Left            =   0
      TabIndex        =   66
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   7
      Left            =   0
      TabIndex        =   65
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   6
      Left            =   0
      TabIndex        =   64
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   5
      Left            =   0
      TabIndex        =   63
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   4
      Left            =   0
      TabIndex        =   62
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   61
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   2
      Left            =   0
      TabIndex        =   60
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   1
      Left            =   0
      TabIndex        =   59
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   20
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   19
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   18
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   17
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   16
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   15
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   14
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   13
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   12
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   11
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   10
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   9
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   8
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   7
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   6
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   5
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   4
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   3
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   2
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   1
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label9 
      Caption         =   "Given Data"
      Height          =   255
      Left            =   120
      TabIndex        =   58
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Label8 
      Caption         =   "Total Elapsed Time:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6120
      TabIndex        =   57
      Top             =   4680
      Width           =   975
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   20
      Left            =   480
      TabIndex        =   56
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   19
      Left            =   480
      TabIndex        =   55
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   18
      Left            =   480
      TabIndex        =   54
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   17
      Left            =   480
      TabIndex        =   53
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   16
      Left            =   480
      TabIndex        =   52
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   15
      Left            =   480
      TabIndex        =   51
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   14
      Left            =   480
      TabIndex        =   50
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   13
      Left            =   480
      TabIndex        =   49
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   12
      Left            =   480
      TabIndex        =   48
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   11
      Left            =   480
      TabIndex        =   47
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   10
      Left            =   480
      TabIndex        =   46
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   9
      Left            =   480
      TabIndex        =   45
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   8
      Left            =   480
      TabIndex        =   44
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   7
      Left            =   480
      TabIndex        =   43
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   6
      Left            =   480
      TabIndex        =   42
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   5
      Left            =   480
      TabIndex        =   41
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   4
      Left            =   480
      TabIndex        =   40
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   3
      Left            =   480
      TabIndex        =   39
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   2
      Left            =   480
      TabIndex        =   38
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   1
      Left            =   480
      TabIndex        =   37
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   495
      Index           =   0
      Left            =   1080
      TabIndex        =   36
      Top             =   7200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      ForeColor       =   &H000000FF&
      Height          =   375
      Index           =   0
      Left            =   360
      TabIndex        =   35
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   0
      Visible         =   0   'False
      X1              =   600
      X2              =   600
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   20
      Left            =   8040
      TabIndex        =   34
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   19
      Left            =   8040
      TabIndex        =   33
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   18
      Left            =   8040
      TabIndex        =   32
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   17
      Left            =   8040
      TabIndex        =   31
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   16
      Left            =   8040
      TabIndex        =   30
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   15
      Left            =   8040
      TabIndex        =   29
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   14
      Left            =   8040
      TabIndex        =   28
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   13
      Left            =   8040
      TabIndex        =   27
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   12
      Left            =   8040
      TabIndex        =   26
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   11
      Left            =   8040
      TabIndex        =   25
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   10
      Left            =   8040
      TabIndex        =   24
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   9
      Left            =   8040
      TabIndex        =   23
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   8
      Left            =   8040
      TabIndex        =   22
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   7
      Left            =   8040
      TabIndex        =   21
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   6
      Left            =   8040
      TabIndex        =   20
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   5
      Left            =   8040
      TabIndex        =   19
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   4
      Left            =   8040
      TabIndex        =   18
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   3
      Left            =   8040
      TabIndex        =   17
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   2
      Left            =   8040
      TabIndex        =   16
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "P1"
      Height          =   375
      Index           =   1
      Left            =   8040
      TabIndex        =   15
      Top             =   6480
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   20
      Visible         =   0   'False
      X1              =   9720
      X2              =   9720
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   19
      Visible         =   0   'False
      X1              =   8760
      X2              =   8760
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   18
      Visible         =   0   'False
      X1              =   7680
      X2              =   7680
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   17
      Visible         =   0   'False
      X1              =   6960
      X2              =   6960
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   16
      Visible         =   0   'False
      X1              =   6360
      X2              =   6360
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   15
      Visible         =   0   'False
      X1              =   6000
      X2              =   6000
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   14
      Visible         =   0   'False
      X1              =   5640
      X2              =   5640
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   13
      Visible         =   0   'False
      X1              =   5280
      X2              =   5280
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   12
      Visible         =   0   'False
      X1              =   4920
      X2              =   4920
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   11
      Visible         =   0   'False
      X1              =   4560
      X2              =   4560
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   10
      Visible         =   0   'False
      X1              =   4200
      X2              =   4200
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   9
      Visible         =   0   'False
      X1              =   3840
      X2              =   3840
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   8
      Visible         =   0   'False
      X1              =   3480
      X2              =   3480
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   7
      Visible         =   0   'False
      X1              =   3120
      X2              =   3120
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   6
      Visible         =   0   'False
      X1              =   2760
      X2              =   2760
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   5
      Visible         =   0   'False
      X1              =   2400
      X2              =   2400
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   4
      Visible         =   0   'False
      X1              =   2040
      X2              =   2040
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   3
      Visible         =   0   'False
      X1              =   1680
      X2              =   1680
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   2
      Visible         =   0   'False
      X1              =   1200
      X2              =   1200
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      Index           =   1
      Visible         =   0   'False
      X1              =   840
      X2              =   840
      Y1              =   6120
      Y2              =   7080
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      FillColor       =   &H008080FF&
      Height          =   975
      Left            =   0
      Top             =   6120
      Visible         =   0   'False
      Width           =   11055
   End
   Begin VB.Label Label5 
      Caption         =   "0"
      Height          =   495
      Left            =   4920
      TabIndex        =   6
      Top             =   6360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "System"
         Size            =   29.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   855
      Left            =   7080
      TabIndex        =   1
      Top             =   4680
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Base 1
Option Explicit
Dim r As Integer
Dim x As Integer
Dim y As Integer
Dim hold As Integer
Dim pass As Integer
Dim idle As Integer
Dim arr(100) As Integer
Dim burt(100) As Integer
Dim averwt As Single
Dim avertat As Single

    
    







Private Sub Command1_Click()
Shape1.Visible = True




 
Timer1.Enabled = True
 List1.AddItem Format$("P", "@@@@") & vbTab & Format$("AT", "@@@@") & vbTab & Format$("BT", "@@@@")
For x = 1 To r
List1.AddItem Format$(x, "@@@@") & vbTab & Format$(arr(x), "@@@@") & vbTab & Format$(burt(x), "@@@@")
Next x


List4.AddItem ("P")
List5.AddItem ("AT")
List6.AddItem ("Start")
List7.AddItem ("End")
List8.AddItem ("WT")
List9.AddItem ("TAT")


End Sub



Private Sub Command2_Click()
Frame2.Visible = False
For x = 1 To (List7.ListCount - 1)
    
    List6.List(x) = (List7.List(x) - burt(List4.List(x)))
    
    If List6.List(x) < 0 Then
    
         List6.List(x) = arr(List4.List(x))
        burt(List4.List(x)) = (burt(List4.List(x)) - List7.List(x)) + arr(x)
    
    End If

Next x


For x = 1 To (List7.ListCount - 1)
    List8.List(x) = (List6.List(x) - List5.List(x))


Next x


For x = 1 To (List7.ListCount - 1)
    List9.List(x) = (List7.List(x) - List5.List(x))


Next x


For x = 1 To (List7.ListCount - 1)
    If List8.List(x) < 0 Then
        List8.List(x) = 0
        
        Line2(x).X1 = (List5.List(x) & "000") / 4       'naglagay ng division sa process
        Line2(x).X2 = (List5.List(x) & "000") / 4
     
        
       
        Label11(x).Caption = List5.List(x)
        Label11(x).Left = (Line2(x).X1 - 100)
        
        
        
        Label13(x).Left = (Line2(x).X1 - 300)
    End If
Next x


End Sub

Private Sub Command3_Click()
If arr(1) <> 0 Then                      'for idle

    Line1(0).X1 = (arr(1) & "000") / 4
    Line1(0).X2 = (arr(1) & "000") / 4
    Label6(0).Caption = "idle"
    Label7(0).Caption = arr(1)
    Label6(0).Left = (Line1(0).X1 - 300)
    Label7(0).Left = (Line1(0).X1 - 100)
    Line1(0).Visible = True
    Label6(0).Visible = True
    Label7(0).Visible = True
End If
For x = 1 To (List7.ListCount - 1)                  'list7-end
    Line1(x).X1 = (List7.List(x) & "000") / 4       'naglagay ng division sa process
    Line1(x).X2 = (List7.List(x) & "000") / 4
    Line1(x).Visible = True
                                                        ' visible ang line
    Label6(x).Left = (Line1(x).X1 - 300)
    Label7(x).Left = (Line1(x).X1 - 100)
    
    Label6(x).Caption = "P" & List4.List(x)
    Label7(x).Caption = List7.List(x)
    Label6(x).Visible = True
    Label7(x).Visible = True
Next x

For x = 1 To 20
    Line2(x).Visible = True
    Label11(x).Visible = True
    If Label13(x).Left = 0 Then
         Label13(x).Visible = False
         Label11(x).Visible = False
         Line2(x).Visible = False
    Else
         Label13(x).Visible = True
         Label11(x).Visible = True
         Line2(x).Visible = True
    End If
Next x

End Sub

Private Sub Command4_Click()
       End
End Sub

Private Sub Command5_Click()
For x = 1 To List8.ListCount - 1
averwt = averwt + List8.List(x)
avertat = avertat + List9.List(x)

Next x

Text1.Text = averwt / r
Text2.Text = avertat / r
End Sub

Private Sub Form_Load()



listpro.AddItem ("Process")
List2.AddItem ("Queue")
List3.AddItem ("AT")
r = InputBox("Please enter the number of process:")
For x = 1 To r
arr(x) = InputBox("Please enter the arrival time of p" & x)

burt(x) = InputBox("Please enter the burst time of p" & x)





Next x

If r > 100 Then
MsgBox ("Sorry the program is limited to 15 process only")
End
End If


'For x = 1 To r
'Frame1(x).Enabled = True


'Next x

'For x = 1 To 15
'Frame1(x).Enabled = True


'Next x


Label4.Caption = arr(1)
For x = 1 To 20
    Line1(x).X1 = "0"
    Line1(x).X2 = "0"
    Label6(x).Left = "0"
Next x
End Sub




Private Sub Label4_Change()
Call Randomize

Shape1.Width = ((Label4.Caption) & "000") / 4
If List2.List(1) = Null Then
idle = idle + 1
End If


x = 1 + Int(7 * Rnd())
Select Case x

Case 1
Shape1.BackColor = &HC0C0FF
Case 2
Shape1.BackColor = &HC0C0C0
Case 3
Shape1.BackColor = &HFF8080
Case 4
Shape1.BackColor = vbYellow
Case 5
Shape1.BackColor = vbGreen
Case 6
Shape1.BackColor = &HFF80FF
Case 7
Shape1.BackColor = vbWhite

End Select





End Sub

Private Sub Timer1_Timer()



Label5.Caption = Label5.Caption + 1
On Error GoTo th:

If List2.List(1) <> 0 Then
    List2.List(1) = List2.List(1) - 1  'process is running, so decreasing its BT
    Label4.Caption = Label4.Caption + 1  ' Elapsed time computed
Else

 List4.AddItem (listpro.List(1))
List5.AddItem (List3.List(1))

List7.AddItem (Label4.Caption)
    List2.RemoveItem (1)
    List3.RemoveItem (1)
    listpro.RemoveItem (1)
    

             
End If
th:


   For x = 1 To r
        If Label5.Caption = arr(x) Then          'if it arrives at the current time
            listpro.AddItem (x)                         'line it in the queue
            List2.AddItem (burt(x))
            List3.AddItem (arr(x))
            
            
            
            For y = 1 To (listpro.ListCount - 1)         'loop for no of list in the queue
                If List2.List(1) > List2.List(y) Then       'if next is less than the first process then srtf
                        
                         If listpro.List(1) < listpro.List(y) Then
                   
                        
                            List4.AddItem (listpro.List(1))
                            List5.AddItem (List3.List(1))
                        
                            List7.AddItem (Label4.Caption)
                            List3.List(1) = Label4.Caption       'for continues AT
                    
                    
                    
                            List2.AddItem (List2.List(1))
                            List3.AddItem (List3.List(1))
                            listpro.AddItem (listpro.List(1))
                
                            List2.RemoveItem (1)
                            List3.RemoveItem (1)
                            listpro.RemoveItem (1)
                        End If
                    
                ElseIf List2.List(1) = List2.List(y) Then     'kung parehas ang BT
               
                    If List3.List(1) > List3.List(y) Then    'check for fcfs 'if nahuli ang nasa una then balik sa queue
                         
                    
                    
                    
                        List2.AddItem (List2.List(1))
                        List3.AddItem (List3.List(1))
                        listpro.AddItem (listpro.List(1))
                
                        List2.RemoveItem (1)
                        List3.RemoveItem (1)
                        listpro.RemoveItem (1)
                    End If
                
                
                End If
            Next y
        
        
        Else    'if in the current time there is no one to arrive, still check the sorting
        
             For y = 1 To (listpro.ListCount - 1)
                If List2.List(1) > List2.List(y) Then
                    If listpro.List(1) < listpro.List(y) Then
                   
                    
                
                            List2.AddItem (List2.List(1))
                            List3.AddItem (List3.List(1))
                            listpro.AddItem (listpro.List(1))
                
                            List2.RemoveItem (1)
                            List3.RemoveItem (1)
                            listpro.RemoveItem (1)
                   End If
              ElseIf List2.List(1) = List2.List(y) Then
                    If List3.List(1) > List3.List(y) Then
                        List2.AddItem (List2.List(1))
                        List3.AddItem (List3.List(1))
                        listpro.AddItem (listpro.List(1))
                
                        List2.RemoveItem (1)
                        List3.RemoveItem (1)
                        listpro.RemoveItem (1)
                    End If
                
                
                End If
            Next y
        
        
        
        
        
        
        
        End If
   Next x
    
    
  
    
  
       
       
   

End Sub

Private Sub Timer2_Timer()
If Label1.Left > -10000 Then
Label1.Left = Label1.Left - 100

Else
Label1.Left = 12000
End If

If Label2.Left > -10000 Then
Label2.Left = Label2.Left - 100

Else
Label2.Left = 12000
End If

If Label2.Left = 3500 Then
Timer2.Enabled = False
Label2.FontSize = 16
Label2.ForeColor = vbBlue
Timer3.Enabled = True
End If









End Sub

Private Sub Timer3_Timer()
If Label3.Caption = "1" Then
Timer2.Enabled = True
Label3.Caption = "0"
Timer3.Enabled = False
Label2.FontSize = 12
Label2.ForeColor = vbBlack
End If
Label3.Caption = Label3.Caption + 1
End Sub
