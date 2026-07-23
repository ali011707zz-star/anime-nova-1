.class public final Lcom/facebook/ads/redexgen/X/7w;
.super Lcom/facebook/ads/redexgen/X/jh;
.source ""


# static fields
.field public static A0D:Lcom/facebook/ads/redexgen/X/Sx;

.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/NJ;

.field public A02:Lcom/facebook/ads/redexgen/X/NK;

.field public A03:Lcom/facebook/ads/redexgen/X/NQ;

.field public A04:Lcom/facebook/ads/redexgen/X/gi;

.field public A05:Lcom/facebook/ads/redexgen/X/WK;

.field public A06:Lcom/facebook/ads/redexgen/X/dC;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 488
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "g9SdUg6XNSnvVCS02jX19aczyGq48qDV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lGSQ9LsgX83H3UqklEPZgAjaPEKabNT0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y0oXMo4BXc2on8MNFvJxgBv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ulfd9L14l0ScyK0QB689zsPu0EZ5wfqr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W3xKKEfUMxBXJmvfztSkCM8j4ls7Vw3H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lNYBpqeQZYlfeCveDiVEAZh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rx8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "elj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7w;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21670
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jh;-><init>()V

    .line 21671
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0B:Ljava/lang/String;

    .line 21672
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;
    .locals 0

    .line 21673
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NQ;
    .locals 0

    .line 21674
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 21675
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/WK;
    .locals 0

    .line 21676
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7w;Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/dC;
    .locals 0

    .line 21677
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7w;->A06:Lcom/facebook/ads/redexgen/X/dC;

    return-object p1
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7w;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21678
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A07()V
    .locals 3

    .line 21679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/NK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/NK;

    .line 21680
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NK;->A00()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P2;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21681
    return-void
.end method

.method private A08()V
    .locals 2

    .line 21682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/NK;

    if-eqz v0, :cond_0

    .line 21683
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P2;->A05(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21684
    :catch_0
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xb6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7w;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x10t
        -0xet
        -0xet
        -0xct
        -0x5t
        -0xct
        0x1t
        -0x2t
        -0x4t
        -0xct
        0x3t
        -0xct
        0x1t
        -0x12t
        0x1t
        -0x2t
        0x3t
        -0x10t
        0x3t
        -0x8t
        -0x2t
        -0x3t
        -0x3at
        -0x2dt
        -0x3ct
        -0x3at
        -0x38t
        -0x27t
        -0x32t
        -0x25t
        -0x32t
        -0x27t
        -0x22t
        0x1t
        0x6t
        -0x1t
        0x7t
        0xct
        0x3t
        0x2t
        -0x21t
        0x2t
        -0x1et
        -0x1t
        0x12t
        -0x1t
        -0x20t
        0x13t
        0xct
        0x2t
        0xat
        0x3t
        0x1dt
        0x15t
        0x14t
        0x19t
        0x11t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0xct
        0x11t
        0x24t
        0x11t
        0x10t
        0xct
        0x1t
        0x3t
        0x5t
        0xdt
        0x5t
        0xet
        0x14t
        -0x17t
        0x4t
        -0x44t
        -0x42t
        -0x4ft
        -0x50t
        -0x4ft
        -0x4et
        -0x4bt
        -0x46t
        -0x4ft
        -0x50t
        -0x65t
        -0x42t
        -0x4bt
        -0x4ft
        -0x46t
        -0x40t
        -0x53t
        -0x40t
        -0x4bt
        -0x45t
        -0x46t
        -0x69t
        -0x4ft
        -0x3bt
        -0x11t
        -0x1et
        -0x12t
        -0xet
        -0x1et
        -0x10t
        -0xft
        -0x2ft
        -0x1at
        -0x16t
        -0x1et
        -0x2t
        -0xft
        0x3t
        -0x13t
        -0x2t
        -0x10t
        -0x21t
        -0xft
        -0x2t
        0x2t
        -0xft
        -0x2t
        -0x1ft
        -0x22t
        -0x28t
        -0xdt
        -0x1at
        -0x8t
        -0x1et
        -0xdt
        -0x1bt
        -0x1at
        -0x1bt
        -0x29t
        -0x16t
        -0x1bt
        -0x1at
        -0x10t
        -0x3et
        -0x1bt
        -0x3bt
        -0x1et
        -0xbt
        -0x1et
        -0x3dt
        -0xat
        -0x11t
        -0x1bt
        -0x13t
        -0x1at
        0x1ct
        0xft
        0x21t
        0xbt
        0x1ct
        0xet
        0xft
        0xet
        0x9t
        0x20t
        0x13t
        0xet
        0xft
        0x19t
        -0x3dt
        -0x44t
        -0x49t
        -0x41t
        -0x3dt
        -0x4dt
        -0x69t
        -0x4et
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x26t
        -0x1t
        -0xat
        -0x15t
    .end array-data
.end method

.method private A0A(Landroid/content/Intent;)V
    .locals 6

    .line 21685
    iget v5, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:I

    const/4 v4, -0x1

    const/16 v2, 0x4d

    const/16 v1, 0x18

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v3

    if-eq v5, v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21686
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 21687
    const/4 v2, 0x1

    const/16 v1, 0x16

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 21688
    iget v4, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const-string v1, "RWC7frN5DjKRH0uo4BJmLzj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FPcb0UYEDF6wwONX6Ty9E2F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21689
    :cond_0
    :goto_0
    return-void

    .line 21690
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Up;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21691
    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const-string v1, "O4w3do1khQsKhsE3USwlJ7C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rALKIAVwphrvKmHx0hqaLzY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Up;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7w;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;I)V
    .locals 0

    .line 21692
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7w;->A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;I)V

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;I)V
    .locals 12

    .line 21693
    move-object v10, p2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    move v11, p3

    if-lt v11, v0, :cond_0

    .line 21694
    return-void

    .line 21695
    :cond_0
    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/7l;

    .line 21696
    .local v0, "currentAdDataBundle":Lcom/facebook/ads/redexgen/X/7l;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    move-object v8, p1

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7w;->A0D:Lcom/facebook/ads/redexgen/X/Sx;

    .line 21697
    sget-object v3, Lcom/facebook/ads/redexgen/X/7w;->A0D:Lcom/facebook/ads/redexgen/X/Sx;

    .line 21698
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 21699
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 21700
    sget-object v0, Lcom/facebook/ads/redexgen/X/7w;->A0D:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v8, v0, v9}, Lcom/facebook/ads/redexgen/X/O6;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/7l;)V

    .line 21701
    if-nez v11, :cond_1

    const/4 v7, 0x1

    .line 21702
    .local v3, "failOnCacheFailure":Z
    :goto_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/7w;->A0D:Lcom/facebook/ads/redexgen/X/Sx;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7x;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/7w;ZLcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/7l;Lcom/facebook/ads/redexgen/X/jT;I)V

    .line 21703
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v0, v3, v1, v11}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21704
    invoke-virtual {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 21705
    return-void

    .line 21706
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private A0D(Z)V
    .locals 2

    .line 21707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0G:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_0

    .line 21708
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7w;->A0F(Z)V

    .line 21709
    :goto_0
    return-void

    .line 21710
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0I:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_1

    .line 21711
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7w;->A0G(Z)V

    goto :goto_0

    .line 21712
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0H:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_2

    .line 21713
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7w;->A0E(Z)V

    goto :goto_0

    .line 21714
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7w;->A0G(Z)V

    goto :goto_0
.end method

.method private A0E(Z)V
    .locals 10

    .line 21715
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/jh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 21716
    .local v1, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21717
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21718
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SN;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 21719
    .local v2, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 21720
    new-instance v3, Lcom/facebook/ads/redexgen/X/SN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21721
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21722
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21723
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/jp;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/jp;-><init>(Lcom/facebook/ads/redexgen/X/7w;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SM;)V

    .line 21724
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 21725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21726
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 21727
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 21728
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SN;->A0B()V

    .line 21729
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    :goto_1
    return-void

    .line 21730
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v1, Lcom/facebook/ads/redexgen/X/jd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/jo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/jo;-><init>(Lcom/facebook/ads/redexgen/X/7w;)V

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/O5;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ZLcom/facebook/ads/redexgen/X/O3;)V

    goto :goto_1

    .line 21731
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private A0F(Z)V
    .locals 6

    .line 21732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 21733
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 21734
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 21735
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 21736
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7l;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/O6;->A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/7l;)V

    .line 21737
    new-instance v4, Lcom/facebook/ads/redexgen/X/jt;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/jt;-><init>(Lcom/facebook/ads/redexgen/X/7w;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21739
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 21740
    return-void
.end method

.method private A0G(Z)V
    .locals 13

    .line 21741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 21742
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v3, Lcom/facebook/ads/redexgen/X/jT;

    .line 21743
    .local v0, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    move-object v2, p0

    .line 21744
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/jh;
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 21745
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 21746
    .local v4, "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21747
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21748
    return-void

    .line 21749
    .end local v4    # "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21750
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {p0, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/7w;->A0C(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;I)V

    .line 21751
    .end local v0    # "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    .end local v2    # "adapter":Lcom/facebook/ads/redexgen/X/jh;
    goto :goto_1

    .line 21752
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 21753
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 21754
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21755
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 21756
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 21757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21758
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SN;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 21760
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v10

    .line 21761
    .local v2, "isDSL":Z
    if-eqz v8, :cond_4

    .line 21762
    new-instance v3, Lcom/facebook/ads/redexgen/X/SN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21763
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21764
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21765
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/jr;

    invoke-direct {v9, p0, v10}, Lcom/facebook/ads/redexgen/X/jr;-><init>(Lcom/facebook/ads/redexgen/X/7w;Z)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SM;)V

    .line 21766
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SN;->A0B()V

    .line 21767
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/SN;
    .end local v0    # "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    .end local v1    # "isUnifiedAssetsLoaderEnabled":Z
    .end local v2    # "isDSL":Z
    .end local v9
    .end local v10
    :goto_1
    return-void

    .line 21768
    :cond_4
    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v11, Lcom/facebook/ads/redexgen/X/7l;

    .line 21769
    .local v9, "adDataBundle":Lcom/facebook/ads/redexgen/X/7l;
    move-object v12, p0

    .line 21770
    .local v10, "adapter":Lcom/facebook/ads/redexgen/X/jh;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21771
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0J:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_5

    .line 21772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AEQ()V

    .line 21773
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v12, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21774
    return-void

    .line 21775
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v4, v11}, Lcom/facebook/ads/redexgen/X/O6;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/7l;)V

    .line 21776
    new-instance v7, Lcom/facebook/ads/redexgen/X/7y;

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/7w;ZZLcom/facebook/ads/redexgen/X/7l;Lcom/facebook/ads/redexgen/X/jh;)V

    .line 21777
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21778
    invoke-virtual {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    goto :goto_1
.end method


# virtual methods
.method public final A0H()I
    .locals 1

    .line 21779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    if-nez v0, :cond_0

    .line 21780
    const/4 v0, -0x1

    return v0

    .line 21781
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0p()I

    move-result v0

    return v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/NQ;
    .locals 1

    .line 21782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    return-object v0
.end method

.method public final A0J()Z
    .locals 7

    .line 21783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 21784
    return v5

    .line 21785
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jh;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NQ;->A1J(J)V

    .line 21786
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jh;->A02:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A0B:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A07:Ljava/lang/String;

    .line 21787
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ea;->A04(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21788
    .local v0, "rewardUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jh;->A02:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1K(Lcom/facebook/ads/RewardData;)V

    .line 21789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/NQ;->A1O(Ljava/lang/String;)V

    .line 21790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A05(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v3

    .line 21791
    .local v2, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    const/16 v2, 0xae

    const/16 v1, 0x8

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21792
    const/16 v2, 0x7f

    const/16 v1, 0x19

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21793
    const/16 v2, 0x22

    const/16 v1, 0x13

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21794
    const/16 v2, 0xa6

    const/16 v1, 0x8

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21795
    if-eqz v4, :cond_1

    .line 21796
    const/16 v2, 0x70

    const/16 v1, 0xf

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21797
    :cond_1
    const/16 v2, 0x42

    const/16 v1, 0xb

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0A:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21798
    const/16 v2, 0x65

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A00:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 21799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A09:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 21800
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A09:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21801
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7w;->A0A(Landroid/content/Intent;)V

    .line 21802
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21803
    invoke-virtual {v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    .line 21804
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 21805
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A0I(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)Z

    move-result v0

    .line 21807
    .local v3, "launchResult":Z
    if-nez v0, :cond_8

    .line 21808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIC()V

    .line 21809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    if-eqz v0, :cond_4

    .line 21810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21811
    :cond_4
    return v5

    .line 21812
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A0B(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ws; {:try_start_0 .. :try_end_0} :catch_0

    .line 21813
    :catch_0
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21814
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Ws;
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const-string v1, "zr3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "zCM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 21815
    .local v3, "exceptionToLog":Ljava/lang/Throwable;
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21816
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A01:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 21817
    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 21818
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Ws;
    .end local v3    # "exceptionToLog":Ljava/lang/Throwable;
    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NJ;Lcom/facebook/ads/redexgen/X/O8;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 21819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21820
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21821
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    .line 21822
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0A:Ljava/lang/String;

    .line 21823
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A00:J

    .line 21824
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/7w;->A09:Ljava/lang/String;

    .line 21825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A0A:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7w;->A0A:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A05(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const-string v1, "x5W"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "dMK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A07:Ljava/lang/String;

    .line 21826
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v1

    .line 21827
    .local v0, "dataObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A03(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/NQ;->A1M(Ljava/lang/String;)V

    .line 21829
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    .line 21830
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A01()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A06()I

    move-result v0

    .line 21831
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1I(I)V

    .line 21832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A08:Ljava/lang/String;

    .line 21834
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21835
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A08:Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    .line 21836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1U()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A08:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 21838
    .end local v1
    :goto_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A0v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21839
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7w;->A0F:[Ljava/lang/String;

    const-string v1, "c2SjyVfNFMTSQhwflPzyjFy3Fjr2snH4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "k4vT1WhZbJ1Mlr1eks5fTJscMmdnfo8D"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NQ;->A1b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21840
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v4, Lcom/facebook/ads/redexgen/X/jT;

    .line 21841
    .local v1, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v3, :cond_7

    .line 21842
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 21843
    .local v3, "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21844
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1H()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 21845
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/kJ;

    move-result-object v1

    .line 21846
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    .line 21847
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A52()V

    .line 21849
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/jT;->A2C(I)V

    .line 21850
    return-void

    .line 21851
    .end local v3    # "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 21852
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0A:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto :goto_2

    .line 21853
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0o()I

    move-result v0

    .line 21854
    .local v1, "experienceType":I
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 21855
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0J:Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    .line 21856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0E:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto/16 :goto_2

    .line 21857
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0G:Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    .line 21858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A04:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 21859
    goto/16 :goto_2

    .line 21860
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A05:Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    .line 21861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A05:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 21862
    goto/16 :goto_2

    .line 21863
    :pswitch_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0H:Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    .line 21864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0C:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 21865
    goto/16 :goto_2

    .line 21866
    :pswitch_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0I:Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A05:Lcom/facebook/ads/redexgen/X/WK;

    .line 21867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0D:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 21868
    goto/16 :goto_2

    .line 21869
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A08:Ljava/lang/String;

    goto/16 :goto_1

    .line 21870
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    if-nez v0, :cond_9

    .line 21871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21872
    return-void

    .line 21873
    :cond_8
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 21874
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A03:Lcom/facebook/ads/redexgen/X/NQ;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 21875
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 21876
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/kJ;

    move-result-object v1

    .line 21877
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    .line 21878
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A52()V

    .line 21880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21881
    return-void

    .line 21882
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7w;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NK;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/NK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/redexgen/X/NJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A02:Lcom/facebook/ads/redexgen/X/NK;

    .line 21883
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A07()V

    .line 21884
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/7w;->A0D(Z)V

    .line 21885
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A7O()Ljava/lang/String;
    .locals 1

    .line 21886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7w;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final AKL()Z
    .locals 1

    .line 21887
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 21888
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7w;->A08()V

    .line 21889
    return-void
.end method
