.class public abstract synthetic Lcom/facebook/ads/redexgen/X/An;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 642
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VStuONYpXyrMGhumGQCd4bHjLXsNGp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S1S3Jkw9LUb6cnfGpNPRKNDuu8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2Ke6uX99C2Ej86uaQGDkeBX7MGwE90Sm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dgZWZs76mC1kc7pglMOV4zGYG00Fgfg1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zUp6mo1SLV7D1o1luAQ3GrC3onIbmqNA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JcKr7RKMAl41fNyv8geFl14jFO0goPB3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MpC9eEu67wFQV2mBNkYCIiAxmHcER7Xb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vtL7ulxwpA8TBFBRvxP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/An;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A00(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 29390
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 p2, 0x0

    sget-object p0, Lcom/facebook/ads/redexgen/X/An;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p0, p0, v0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x54

    if-eq p0, v0, :cond_2

    sget-object p1, Lcom/facebook/ads/redexgen/X/An;->A00:[Ljava/lang/String;

    const-string p0, "DqCazpM1ekD0ZgQHfzEk4TgsAWjX7kxP"

    const/4 v0, 0x6

    aput-object p0, p1, v0

    return p2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
