.class public final Lcom/facebook/ads/redexgen/X/Ro;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A05:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1628
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WrVVpIlV0mVOOesXyJjac9RJgGDEsYiy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "55KqVxwk4ItPenJ0PbzoYHpl7VLiDDoF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "85Uc86a0UVsoWW8LIwye7frNycSrKuPv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TRaam"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0wWSnm1p2XMm3vcxH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BPzoua9RAnM56oYN7Gpf0cmvKga9OU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ro;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    .line 63050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A05:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 63052
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ro;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 63053
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ro;->A04:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 63054
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ro;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x52

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x111

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ro;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x4et
        -0x13t
        -0x7t
        -0x9t
        -0x48t
        -0x10t
        -0x15t
        -0x13t
        -0x11t
        -0x14t
        -0x7t
        -0x7t
        -0xbt
        -0x48t
        -0x15t
        -0x12t
        -0x3t
        -0x48t
        -0x15t
        -0x12t
        -0x4t
        -0x11t
        -0x6t
        -0x7t
        -0x4t
        -0x2t
        -0xdt
        -0x8t
        -0xft
        -0x48t
        -0x30t
        -0x2dt
        -0x28t
        -0x2dt
        -0x23t
        -0x2et
        -0x17t
        -0x35t
        -0x32t
        -0x17t
        -0x24t
        -0x31t
        -0x26t
        -0x27t
        -0x24t
        -0x22t
        -0x2dt
        -0x28t
        -0x2ft
        -0x17t
        -0x30t
        -0x2at
        -0x27t
        -0x1ft
        0x1ct
        0x28t
        0x26t
        -0x19t
        0x1ft
        0x1at
        0x1ct
        0x1et
        0x1bt
        0x28t
        0x28t
        0x24t
        -0x19t
        0x1at
        0x1dt
        0x2ct
        -0x19t
        0x22t
        0x27t
        0x2dt
        0x1et
        0x2bt
        0x2ct
        0x2dt
        0x22t
        0x2dt
        0x22t
        0x1at
        0x25t
        -0x19t
        0x1at
        0x1ct
        0x2dt
        0x22t
        0x2ft
        0x22t
        0x2dt
        0x32t
        0x18t
        0x1dt
        0x1et
        0x2ct
        0x2dt
        0x2bt
        0x28t
        0x32t
        0x1et
        0x1dt
        0x10t
        0x1ct
        0x1at
        -0x25t
        0x13t
        0xet
        0x10t
        0x12t
        0xft
        0x1ct
        0x1ct
        0x18t
        -0x25t
        0xet
        0x11t
        0x20t
        -0x25t
        0x16t
        0x1bt
        0x21t
        0x12t
        0x1ft
        0x20t
        0x21t
        0x16t
        0x21t
        0x16t
        0xet
        0x19t
        -0x25t
        0x11t
        0x16t
        0x20t
        0x1at
        0x16t
        0x20t
        0x20t
        0x12t
        0x11t
        0x2et
        0x3at
        0x38t
        -0x7t
        0x31t
        0x2ct
        0x2et
        0x30t
        0x2dt
        0x3at
        0x3at
        0x36t
        -0x7t
        0x2ct
        0x2ft
        0x3et
        -0x7t
        0x34t
        0x39t
        0x3ft
        0x30t
        0x3dt
        0x3et
        0x3ft
        0x34t
        0x3ft
        0x34t
        0x2ct
        0x37t
        -0x7t
        0x30t
        0x3dt
        0x3dt
        0x3at
        0x3dt
        -0x27t
        -0x1bt
        -0x1dt
        -0x5ct
        -0x24t
        -0x29t
        -0x27t
        -0x25t
        -0x28t
        -0x1bt
        -0x1bt
        -0x1ft
        -0x5ct
        -0x29t
        -0x26t
        -0x17t
        -0x5ct
        -0x21t
        -0x1ct
        -0x16t
        -0x25t
        -0x18t
        -0x17t
        -0x16t
        -0x21t
        -0x16t
        -0x21t
        -0x29t
        -0x1et
        -0x5ct
        -0x24t
        -0x21t
        -0x1ct
        -0x21t
        -0x17t
        -0x22t
        -0x2bt
        -0x29t
        -0x27t
        -0x16t
        -0x21t
        -0x14t
        -0x21t
        -0x16t
        -0x11t
        -0x4t
        0x8t
        0x6t
        -0x39t
        -0x1t
        -0x6t
        -0x4t
        -0x2t
        -0x5t
        0x8t
        0x8t
        0x4t
        -0x39t
        -0x6t
        -0x3t
        0xct
        -0x39t
        0x2t
        0x7t
        0xdt
        -0x2t
        0xbt
        0xct
        0xdt
        0x2t
        0xdt
        0x2t
        -0x6t
        0x5t
        -0x39t
        0x2t
        0x6t
        0x9t
        0xbt
        -0x2t
        0xct
        0xct
        0x2t
        0x8t
        0x7t
        -0x39t
        0x5t
        0x8t
        0x0t
        0x0t
        -0x2t
        -0x3t
        0xet
        0x1ft
        0xet
        0x17t
        0x1dt
    .end array-data
.end method

.method private final A02(Z)V
    .locals 0

    .line 63055
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A03:Z

    .line 63056
    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/WK;)Z
    .locals 4

    .line 63057
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0I:Lcom/facebook/ads/redexgen/X/WK;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0H:Lcom/facebook/ads/redexgen/X/WK;

    if-eq p1, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/WK;->A08:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const-string v1, "QK9lt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "71ldustRCfnIbk6ZF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A05:Lcom/facebook/ads/redexgen/X/WK;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0G:Lcom/facebook/ads/redexgen/X/WK;

    if-eq p1, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/WK;->A0J:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const-string v1, "n7dEG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "EMW1RUsZodH5Xcp8C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V
    .locals 4

    .line 63058
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A03:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 63059
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A23(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 63060
    .local v0, "shouldCallOnDestroy":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A02:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 63061
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ro;->A03(Lcom/facebook/ads/redexgen/X/WK;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63062
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A03:Lcom/facebook/ads/redexgen/X/ez;

    .line 63063
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v0

    .line 63064
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 63065
    :goto_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ro;->A02:Z

    .line 63066
    :cond_1
    return-void

    .line 63067
    :cond_2
    const/16 v2, 0x36

    const/16 v1, 0x30

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63068
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V
    .locals 3

    .line 63069
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ro;->A03(Lcom/facebook/ads/redexgen/X/WK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63070
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A09:Lcom/facebook/ads/redexgen/X/ez;

    .line 63071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v0

    .line 63072
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 63073
    :goto_0
    return-void

    .line 63074
    :cond_0
    const/16 v2, 0x8d

    const/16 v1, 0x23

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V
    .locals 3

    .line 63075
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ro;->A03(Lcom/facebook/ads/redexgen/X/WK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63076
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A05:Lcom/facebook/ads/redexgen/X/ez;

    .line 63077
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v0

    .line 63078
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 63079
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A02(Z)V

    .line 63080
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A04(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V

    .line 63081
    return-void

    .line 63082
    :cond_0
    const/16 v2, 0x66

    const/16 v1, 0x27

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V
    .locals 4

    .line 63083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63084
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A01:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Z

    if-nez v0, :cond_0

    .line 63085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const-string v1, "ERQ6CJuvlb3tCwq1OYCzpUpdhNPz9IsE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "fdli8mgwNbZyMwMFsZ54k8DyiigEG2Sx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Lt;->ACd()V

    .line 63086
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A05(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V

    .line 63087
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;Ljava/lang/String;)V
    .locals 4

    .line 63088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63089
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 63090
    const/16 v2, 0x10c

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63091
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A04:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/P2;->A07(Landroid/content/Intent;)Z

    .line 63092
    return-void
.end method

.method public final A09(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 63093
    const/16 v2, 0xdd

    const/16 v1, 0x2f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A0A:Lcom/facebook/ads/redexgen/X/ez;

    .line 63094
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63095
    :cond_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ro;->A01:Z

    .line 63096
    :cond_1
    const/16 v2, 0x8d

    const/16 v1, 0x23

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ro;->A08:[Ljava/lang/String;

    const-string v1, "q8Yu3i76ZTlYqxP4qtQeXX4gnui9AJbb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "UYbwc2QJiguNdyXAgiRTefqPyIZvniQg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A09:Lcom/facebook/ads/redexgen/X/ez;

    .line 63097
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63098
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Z

    .line 63099
    :cond_3
    const/4 v2, 0x1

    const/16 v1, 0x35

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A05:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    const/16 v0, 0x9

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    .line 63101
    return-void

    .line 63102
    :cond_4
    const/16 v2, 0xb0

    const/16 v1, 0x2d

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A05:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    .line 63104
    return-void

    .line 63105
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Ro;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;Ljava/lang/String;)V

    .line 63106
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
