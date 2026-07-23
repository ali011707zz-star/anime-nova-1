.class public final Lcom/facebook/ads/redexgen/X/DJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackId"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 691
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4TwA1o2Ep92EJf2kWsTxgSvY7XFLVqxb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SzLaCQdX0pGKHOEOuI88qU4Xa6V3gjjn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mTjGFAU84gG5amLKxmHz14L2RlN7AEMU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k8pgVKm75DJXQCu6A3JyW6XocEHCMitL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dt5DaTGTZuM8JcFDSObTqaWbrPY1DBAg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KOI07PnFBeZ1Xb1RPLCsygCZDxdIvUV5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t49dzbEAn9Axd4L5SSbOFdqKA0HDLlVI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LyI4lmghWi20pkpR0r6qTAUyYqODE3a9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 33620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33621
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DJ;->A00:I

    .line 33622
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/DJ;->A01:Z

    .line 33623
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 33624
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 33625
    return v3

    .line 33626
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 33627
    .end local v2
    :cond_1
    return v2

    .line 33628
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A02:[Ljava/lang/String;

    const-string v1, "Ep9mp6taO3R9ZcsruaKBGqDLxq8mMAmY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0oDwj4GIzGtUTBPxtG85JLkkQ4P5go2r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/redexgen/X/DJ;

    .line 33629
    .local v2, "other":Lcom/facebook/ads/redexgen/X/DJ;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DJ;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DJ;->A00:I

    if-ne v1, v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DJ;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DJ;->A01:Z

    if-ne v1, v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 33630
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DJ;->A00:I

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DJ;->A01:Z

    add-int/2addr v1, v0

    return v1
.end method
