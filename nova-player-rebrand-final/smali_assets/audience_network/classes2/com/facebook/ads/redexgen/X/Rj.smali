.class public final Lcom/facebook/ads/redexgen/X/Rj;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Intent;

.field public final A01:Lcom/facebook/ads/redexgen/X/Re;

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;

.field public final A03:Lcom/facebook/ads/redexgen/X/VA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1627
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MJXAzUwyiLvMzZCrP1QJf8uMs9b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sHuNTXgsBnW3HGqskl7KH5QkikNWpABj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "q8u9vKEVkpk3dMxroB1EFzM5kwDKfJOq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eyGwnlQBA4bCraIcft5FxvFgN7f8TC5N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FmmRYKiwjJl3dX1FB2pV6kIWJpsNLC6h"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "flBitaWG3wpDSjkerYNuTkR3r5UhRox3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xkUQOvOGGj42jMnQjSDdoLzQvdQiYUba"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XqZ9VL6XKZ5Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rj;->A0L()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Re;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 62850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62851
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    .line 62852
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    .line 62853
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    .line 62854
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 62855
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/jd;
    .locals 6

    .line 62856
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v2, 0x50

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v4

    if-lt v5, v3, :cond_0

    .line 62857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    return-object v0

    .line 62858
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62859
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "LmjecX6z1NXmevkMdudhCsYVgseeBlBL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 62860
    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/jT;
    .locals 5

    .line 62861
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v2, 0x1a

    const/16 v1, 0x13

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v2

    if-lt v4, v3, :cond_0

    .line 62862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jT;

    return-object v0

    .line 62863
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jT;

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/7n;
    .locals 5

    .line 62864
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v2, 0x2

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v2

    if-lt v4, v3, :cond_0

    .line 62865
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/7n;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7n;

    return-object v0

    .line 62866
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    .line 62867
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7n;

    .line 62868
    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/7l;
    .locals 5

    .line 62869
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v2, 0x62

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v2

    if-lt v4, v3, :cond_0

    .line 62870
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/7l;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7l;

    return-object v0

    .line 62871
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    .line 62872
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7l;

    .line 62873
    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/Re;
    .locals 0

    .line 62874
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/Yi;
    .locals 12

    .line 62875
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    const/16 v2, 0x44

    const/16 v1, 0xc

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 62876
    .local v0, "isV2Design":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62877
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    const/16 v2, 0x2d

    const/16 v1, 0x17

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62878
    .local v1, "clickDelayMs":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v9, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    .line 62879
    const/16 v2, 0x10

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62880
    if-nez v4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "YY09SF1W0j6b6KfCSgRusx8TJPca7HgC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/redexgen/X/Re;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;I)V

    .line 62881
    return-object v5

    .line 62882
    .end local v1    # "clickDelayMs":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v5, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/PZ;-><init>(Lcom/facebook/ads/redexgen/X/Re;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Z)V

    return-object v1
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/Yi;
    .locals 4

    .line 62883
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v3

    .line 62884
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v3, :cond_0

    .line 62885
    const/4 v0, 0x0

    return-object v0

    .line 62886
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/MH;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/MH;-><init>()V

    .line 62887
    .local v1, "adBehaviour":Lcom/facebook/ads/redexgen/X/ZU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v1, Lcom/facebook/ads/redexgen/X/77;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/77;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 62888
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Yh;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v0

    .line 62889
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/facebook/ads/redexgen/X/Rj;->A08(Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    return-object v0
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/Yi;
    .locals 4

    .line 62890
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A03()Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v3

    .line 62891
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/7l;
    if-nez v3, :cond_0

    .line 62892
    const/4 v0, 0x0

    return-object v0

    .line 62893
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    .line 62894
    .local v1, "adBehaviour":Lcom/facebook/ads/redexgen/X/ZU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v1, Lcom/facebook/ads/redexgen/X/77;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/77;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 62895
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Yh;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v0

    .line 62896
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/facebook/ads/redexgen/X/Rj;->A08(Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    return-object v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)Lcom/facebook/ads/redexgen/X/Yi;
    .locals 10

    .line 62897
    move-object v1, p0

    move-object v6, p2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    move-object v9, p4

    move-object v5, p1

    if-eqz v0, :cond_1

    .line 62898
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v7

    .line 62899
    .local p0, "playableAdData":Lcom/facebook/ads/redexgen/X/No;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NQ;->A1n()Z

    move-result v0

    move-object v8, p3

    if-eqz v0, :cond_0

    .line 62900
    new-instance v2, Lcom/facebook/ads/redexgen/X/MW;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)V

    return-object v2

    .line 62901
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/NO;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    move-object v5, v5

    move-object v6, v6

    move-object v7, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/NO;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)V

    return-object v2

    .line 62902
    .end local p0    # "playableAdData":Lcom/facebook/ads/redexgen/X/No;
    :cond_1
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/ZU;->A81()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 62903
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 62904
    const/4 v0, 0x0

    return-object v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/WK;)Lcom/facebook/ads/redexgen/X/PJ;
    .locals 7

    .line 62905
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0G:Lcom/facebook/ads/redexgen/X/WK;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 62906
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A03()Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62907
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "BHjTvXd0Vicw2MzqRZQvpavg35ntNS6w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "NWBwsXtlP0iXXM4o1NBUiSzzY7vvtUxs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v6, :cond_2

    .line 62908
    return-object v3

    .line 62909
    .end local v0    # "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0A:Lcom/facebook/ads/redexgen/X/WK;

    if-ne p1, v0, :cond_4

    .line 62910
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v6

    .line 62911
    .restart local v0    # "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v6, :cond_2

    .line 62912
    return-object v3

    .line 62913
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Re;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1L(Ljava/lang/String;)V

    .line 62914
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NQ;->A1a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62915
    new-instance v1, Lcom/facebook/ads/redexgen/X/4U;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v5, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4U;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V

    return-object v1

    .line 62916
    :cond_3
    new-instance v1, Lcom/facebook/ads/redexgen/X/4T;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v5, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4T;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V

    return-object v1

    .line 62917
    .end local v0    # "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_4
    return-object v3
.end method

.method private final A0A()Lcom/facebook/ads/redexgen/X/MT;
    .locals 3

    .line 62918
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MT;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/MT;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Re;)V

    return-object v0
.end method

.method private A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MI;
    .locals 6

    .line 62919
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/hR;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/hR;-><init>(Lcom/facebook/ads/redexgen/X/Rj;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v0, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {v4, v5, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/MI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZP;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 62920
    .local v0, "videoInterstitialView":Lcom/facebook/ads/redexgen/X/MI;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/MI;->A05(Landroid/view/View;)V

    .line 62921
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Landroid/content/Intent;

    .line 62922
    const/16 v2, 0x7b

    const/16 v1, 0x1b

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0K(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc8

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62923
    .local v1, "videoProgressReportIntervalMs":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/MI;->A04(I)V

    .line 62924
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 62925
    return-object v4
.end method

.method private A0C()Lcom/facebook/ads/redexgen/X/66;
    .locals 8

    .line 62926
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v5

    .line 62927
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v5, :cond_0

    .line 62928
    const/4 v0, 0x0

    return-object v0

    .line 62929
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/66;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v4, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    new-instance v6, Lcom/facebook/ads/redexgen/X/MH;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/MH;-><init>()V

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/66;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/ZU;I)V

    return-object v1
.end method

.method private A0D()Lcom/facebook/ads/redexgen/X/66;
    .locals 8

    .line 62930
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A03()Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v5

    .line 62931
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/7l;
    if-nez v5, :cond_0

    .line 62932
    const/4 v0, 0x0

    return-object v0

    .line 62933
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/66;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v4, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    new-instance v6, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/66;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/ZU;I)V

    return-object v1
.end method

.method private A0E()Lcom/facebook/ads/redexgen/X/JD;
    .locals 6

    .line 62934
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A00()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v5

    .line 62935
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    const/4 v1, 0x0

    if-nez v5, :cond_0

    .line 62936
    return-object v1

    .line 62937
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dD;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v4

    .line 62938
    .local v2, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/dC;
    if-nez v4, :cond_1

    .line 62939
    return-object v1

    .line 62940
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v2, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 62941
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JD;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/JD;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/dC;Ljava/lang/String;)V

    .line 62942
    return-object v0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/WK;)Lcom/facebook/ads/redexgen/X/Ge;
    .locals 8

    .line 62943
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A01()Lcom/facebook/ads/redexgen/X/jT;

    move-result-object v5

    .line 62944
    .local v7, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    if-nez v5, :cond_0

    .line 62945
    const/4 v0, 0x0

    return-object v0

    .line 62946
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A04:Lcom/facebook/ads/redexgen/X/WK;

    if-ne p1, v0, :cond_1

    .line 62947
    new-instance v3, Lcom/facebook/ads/redexgen/X/MH;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/MH;-><init>()V

    .line 62948
    .local v0, "adBehavior":Lcom/facebook/ads/redexgen/X/ZU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v7, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 62949
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/hS;
    .end local v0    # "adBehavior":Lcom/facebook/ads/redexgen/X/ZU;
    .local p0, "adBehavior":Lcom/facebook/ads/redexgen/X/ZU;
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/hS;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ge;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Ge;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V

    return-object v1

    .line 62950
    .end local v0
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/hS;
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    .line 62951
    .restart local v0    # "adBehavior":Lcom/facebook/ads/redexgen/X/ZU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v7, Lcom/facebook/ads/redexgen/X/77;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/77;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    goto :goto_0
.end method

.method private A0G()Lcom/facebook/ads/redexgen/X/4x;
    .locals 8

    .line 62952
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v5

    .line 62953
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/7n;
    if-nez v5, :cond_1

    .line 62954
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "TvLwsmu9uaa0faVP4fF8b7PGg31O8U7I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 62955
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/4x;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/MH;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/MH;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v7, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V

    return-object v1
.end method

.method private A0H()Lcom/facebook/ads/redexgen/X/4V;
    .locals 8

    .line 62956
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v5

    .line 62957
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v5, :cond_0

    .line 62958
    const/4 v0, 0x0

    return-object v0

    .line 62959
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/4V;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/MH;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/MH;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v7, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4V;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V

    return-object v1
.end method

.method private A0I()Lcom/facebook/ads/redexgen/X/4V;
    .locals 8

    .line 62960
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A03()Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v5

    .line 62961
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/7l;
    if-nez v5, :cond_0

    .line 62962
    const/4 v0, 0x0

    return-object v0

    .line 62963
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/4V;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v7, Lcom/facebook/ads/redexgen/X/77;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/77;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4V;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V

    return-object v1
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/WK;)Lcom/facebook/ads/redexgen/X/GB;
    .locals 9

    .line 62964
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0J:Lcom/facebook/ads/redexgen/X/WK;

    const/4 v1, 0x0

    move-object v8, p1

    if-ne v8, v0, :cond_1

    .line 62965
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A03()Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v4

    .line 62966
    .local v0, "videoDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v4, :cond_0

    .line 62967
    return-object v1

    .line 62968
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A03()Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v5

    .line 62969
    .local v2, "playableDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v5, :cond_3

    .line 62970
    return-object v1

    .line 62971
    .end local v0    # "videoDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    .end local v2    # "playableDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0E:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v8, v0, :cond_4

    .line 62972
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v4

    .line 62973
    .restart local v0    # "videoDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v4, :cond_2

    .line 62974
    return-object v1

    .line 62975
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A02()Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v5

    .line 62976
    .restart local v2    # "playableDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-nez v5, :cond_3

    .line 62977
    return-object v1

    .line 62978
    :cond_3
    new-instance v1, Lcom/facebook/ads/redexgen/X/GB;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    new-instance v6, Lcom/facebook/ads/redexgen/X/77;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/77;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Re;Lcom/facebook/ads/redexgen/X/WK;)V

    return-object v1

    .line 62979
    .end local v0    # "videoDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    .end local v2    # "playableDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_4
    return-object v1
.end method

.method public static A0K(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rj;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0L()V
    .locals 1

    const/16 v0, 0x96

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rj;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x7ft
        0x4t
        0x1t
        0x3at
        0x1t
        0x4t
        0x11t
        0x4t
        0x3at
        0x7t
        0x10t
        0xbt
        0x1t
        0x9t
        0x0t
        0x2bt
        0x29t
        0x24t
        0x24t
        0x2dt
        0x3at
        0x1ct
        0x31t
        0x38t
        0x2dt
        0x77t
        0x7ct
        0x75t
        0x7dt
        0x7at
        0x71t
        0x70t
        0x55t
        0x70t
        0x50t
        0x75t
        0x60t
        0x75t
        0x56t
        0x61t
        0x7at
        0x70t
        0x78t
        0x71t
        0x23t
        0x2ct
        0x29t
        0x31t
        0x20t
        0x37t
        0x20t
        0x21t
        0x1at
        0x26t
        0x29t
        0x2ct
        0x26t
        0x2et
        0x1at
        0x21t
        0x20t
        0x29t
        0x24t
        0x3ct
        0x1at
        0x28t
        0x36t
        0x7bt
        0x61t
        0x4dt
        0x64t
        0x20t
        0x4dt
        0x76t
        0x77t
        0x61t
        0x7bt
        0x75t
        0x7ct
        0x74t
        0x7bt
        0x6et
        0x73t
        0x6ct
        0x7ft
        0x5bt
        0x7et
        0x5et
        0x7bt
        0x6et
        0x7bt
        0x58t
        0x6ft
        0x74t
        0x7et
        0x76t
        0x7ft
        0x20t
        0x37t
        0x25t
        0x33t
        0x20t
        0x36t
        0x37t
        0x36t
        0x4t
        0x3bt
        0x36t
        0x37t
        0x3dt
        0x13t
        0x36t
        0x16t
        0x33t
        0x26t
        0x33t
        0x10t
        0x27t
        0x3ct
        0x36t
        0x3et
        0x37t
        0x16t
        0x9t
        0x4t
        0x5t
        0xft
        0x3ft
        0x14t
        0x9t
        0xdt
        0x5t
        0x3ft
        0x10t
        0xft
        0xct
        0xct
        0x9t
        0xet
        0x7t
        0x3ft
        0x9t
        0xet
        0x14t
        0x5t
        0x12t
        0x16t
        0x1t
        0xct
    .end array-data
.end method


# virtual methods
.method public final A0M(Lcom/facebook/ads/redexgen/X/WK;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/Yi;
    .locals 4

    .line 62980
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 62981
    return-object v2

    .line 62982
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ri;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WK;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 62983
    return-object v2

    .line 62984
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0J(Lcom/facebook/ads/redexgen/X/WK;)Lcom/facebook/ads/redexgen/X/GB;

    move-result-object v0

    return-object v0

    .line 62985
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0A()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    return-object v0

    .line 62986
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0F(Lcom/facebook/ads/redexgen/X/WK;)Lcom/facebook/ads/redexgen/X/Ge;

    move-result-object v0

    return-object v0

    .line 62987
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0D()Lcom/facebook/ads/redexgen/X/66;

    move-result-object v0

    return-object v0

    .line 62988
    :pswitch_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0C()Lcom/facebook/ads/redexgen/X/66;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "7AQwH6OZkLua7JLoKEhUfmskdEmJStMK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 62989
    :pswitch_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0E()Lcom/facebook/ads/redexgen/X/JD;

    move-result-object v0

    return-object v0

    .line 62990
    :pswitch_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A06()Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    return-object v0

    .line 62991
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0G()Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    return-object v0

    .line 62992
    :pswitch_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0H()Lcom/facebook/ads/redexgen/X/4V;

    move-result-object v0

    return-object v0

    .line 62993
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A05()Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "IIJ0HXviRARge0yizoGTY0JUA2Nzjczv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A05:[Ljava/lang/String;

    const-string v1, "UHMFNKnwuKHYyMbevaCPtufG1H9dhH1t"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "s6UgSHR7PtydXMVItCKPjBxPhDp7nABU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 62994
    :pswitch_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A07()Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    return-object v0

    .line 62995
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rj;->A0I()Lcom/facebook/ads/redexgen/X/4V;

    move-result-object v0

    return-object v0

    .line 62996
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rj;->A09(Lcom/facebook/ads/redexgen/X/WK;)Lcom/facebook/ads/redexgen/X/PJ;

    move-result-object v0

    return-object v0

    .line 62997
    :pswitch_d
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Rj;->A0B(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MI;

    move-result-object v2

    :cond_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
