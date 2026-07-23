.class public final Lcom/facebook/ads/redexgen/X/oP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/93;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PositionTrackerListener"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/oM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3330
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JE7C4PJjP7BCbZqkJpMMyURXZ5h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iMYF6XNZz1LBnq9Lsd18aPb3vu2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XxqNLC6c7RSVqgSJXO5oI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nEpRStmmyFjBR5hyZRShRQxXaXf0Mj7x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WMevU6o4a2paeBy7iKLxLT9X"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1yBfwy19"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IbfL1f4elDnhfhlOaFmHA7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3K7V2NpliX3hv5M7KS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oP;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oP;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oM;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 103065
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/oM;Lcom/facebook/ads/redexgen/X/9B;)V
    .locals 0

    .line 103066
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/oP;-><init>(Lcom/facebook/ads/redexgen/X/oM;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oP;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

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
    .locals 4

    const/16 v0, 0xa1

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/oP;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/oP;->A02:[Ljava/lang/String;

    const-string v1, "crOuuTwIIsvqp0CyO4zKH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "QvBSziwTMADuiMqU3qgYIx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/oP;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x4ct
        0x46t
        0x67t
        0x64t
        0x63t
        0x77t
        0x6et
        0x76t
        0x43t
        0x77t
        0x66t
        0x6bt
        0x6dt
        0x51t
        0x6bt
        0x6ct
        0x69t
        0x18t
        0x36t
        0x3ft
        0x3et
        0x23t
        0x38t
        0x3ft
        0x36t
        0x71t
        0x38t
        0x3ct
        0x21t
        0x3et
        0x22t
        0x22t
        0x38t
        0x33t
        0x3dt
        0x28t
        0x71t
        0x3dt
        0x30t
        0x23t
        0x36t
        0x34t
        0x71t
        0x30t
        0x24t
        0x35t
        0x38t
        0x3et
        0x71t
        0x3dt
        0x30t
        0x25t
        0x34t
        0x3ft
        0x32t
        0x28t
        0x6bt
        0x71t
        0x62t
        0x41t
        0x44t
        0x43t
        0x58t
        0x5et
        0x44t
        0x42t
        0x11t
        0x50t
        0x44t
        0x55t
        0x58t
        0x5et
        0x11t
        0x45t
        0x58t
        0x5ct
        0x54t
        0x42t
        0x45t
        0x50t
        0x5ct
        0x41t
        0x11t
        0x19t
        0x57t
        0x43t
        0x50t
        0x5ct
        0x54t
        0x11t
        0x41t
        0x5et
        0x42t
        0x58t
        0x45t
        0x58t
        0x5et
        0x5ft
        0x11t
        0x5ct
        0x58t
        0x42t
        0x5ct
        0x50t
        0x45t
        0x52t
        0x59t
        0x18t
        0xbt
        0x11t
        0x66t
        0x45t
        0x40t
        0x47t
        0x5ct
        0x5at
        0x40t
        0x46t
        0x15t
        0x54t
        0x40t
        0x51t
        0x5ct
        0x5at
        0x15t
        0x41t
        0x5ct
        0x58t
        0x50t
        0x46t
        0x41t
        0x54t
        0x58t
        0x45t
        0x15t
        0x1dt
        0x46t
        0x4ct
        0x46t
        0x41t
        0x50t
        0x58t
        0x15t
        0x56t
        0x59t
        0x5at
        0x56t
        0x5et
        0x15t
        0x58t
        0x5ct
        0x46t
        0x58t
        0x54t
        0x41t
        0x56t
        0x5dt
        0x1ct
        0xft
        0x15t
    .end array-data
.end method


# virtual methods
.method public final AEM(J)V
    .locals 4

    .line 103067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x29

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 103068
    return-void
.end method

.method public final AFN(J)V
    .locals 4

    .line 103069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0J(Lcom/facebook/ads/redexgen/X/oM;)Lcom/facebook/ads/redexgen/X/8v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103070
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/oP;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/oP;->A02:[Ljava/lang/String;

    const-string v1, "XUD65QsQyQCwJDnhFrO8y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "L1DcP3KlVDNfGhVI0cZDzs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/oM;->A0J(Lcom/facebook/ads/redexgen/X/oM;)Lcom/facebook/ads/redexgen/X/8v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8v;->AFN(J)V

    .line 103071
    :cond_1
    return-void
.end method

.method public final AFP(JJJJ)V
    .locals 5

    .line 103072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3b

    const/16 v1, 0x34

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    .line 103073
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0A(Lcom/facebook/ads/redexgen/X/oM;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    .line 103074
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0B(Lcom/facebook/ads/redexgen/X/oM;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103075
    .local v0, "message":Ljava/lang/String;
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/oM;->A0v:Z

    if-nez v0, :cond_0

    .line 103076
    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 103077
    return-void

    .line 103078
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/9I;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9B;)V

    throw v0
.end method

.method public final AG9(JJJJ)V
    .locals 5

    .line 103079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6f

    const/16 v1, 0x32

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    .line 103080
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0A(Lcom/facebook/ads/redexgen/X/oM;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    .line 103081
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0B(Lcom/facebook/ads/redexgen/X/oM;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103082
    .local v0, "message":Ljava/lang/String;
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/oM;->A0v:Z

    if-nez v0, :cond_0

    .line 103083
    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 103084
    return-void

    .line 103085
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/9I;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9B;)V

    throw v0
.end method

.method public final AGI(IJ)V
    .locals 6

    .line 103086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0J(Lcom/facebook/ads/redexgen/X/oM;)Lcom/facebook/ads/redexgen/X/8v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0C(Lcom/facebook/ads/redexgen/X/oM;)J

    move-result-wide v0

    sub-long/2addr v4, v0

    .line 103088
    .local v0, "elapsedSinceLastFeedMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oP;->A00:Lcom/facebook/ads/redexgen/X/oM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0J(Lcom/facebook/ads/redexgen/X/oM;)Lcom/facebook/ads/redexgen/X/8v;

    move-result-object v0

    move-wide v2, p2

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8v;->AGJ(IJJ)V

    .line 103089
    .end local v0    # "elapsedSinceLastFeedMs":J
    :cond_0
    return-void
.end method
