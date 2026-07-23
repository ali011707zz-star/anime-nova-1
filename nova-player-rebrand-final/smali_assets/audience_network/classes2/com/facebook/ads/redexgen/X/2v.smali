.class public final Lcom/facebook/ads/redexgen/X/2v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 144
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qHTDH9In90rcdwOuJSMsckDCyhXLEqXh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sjoVkyKa6A2BCKkZrfwj87PX67VguoUI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qImvz97oy2HsABXMHKvVYevPQzDne9wP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UzpUk3fTqoJh79PyI9vqz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KgRAjTCckMjKxprnKjT8aDWLldg5JvO5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4Alk19u7jrL2h9l2ISqApHve2GAaOLRy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kGAXwVnqzw6LSG9eyiJgo4nQQXri73zT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2v;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9814
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:J

    .line 9815
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2v;)J
    .locals 1

    .line 9816
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2v;)J
    .locals 1

    .line 9817
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2v;)Z
    .locals 0

    .line 9818
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/2v;->A03:Z

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/2v;)Z
    .locals 0

    .line 9819
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/2v;->A02:Z

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/2v;)Z
    .locals 0

    .line 9820
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/2v;->A04:Z

    return p0
.end method


# virtual methods
.method public final A05(J)Lcom/facebook/ads/redexgen/X/2v;
    .locals 3

    .line 9821
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 9822
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:J

    .line 9823
    return-object p0

    .line 9824
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/2v;
    .locals 3

    .line 9825
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 9826
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2v;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/2v;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_1

    .line 9827
    sget-object v2, Lcom/facebook/ads/redexgen/X/2v;->A05:[Ljava/lang/String;

    const-string v1, "GlFOp7JpNqKfXRYg7N9RmxJvUWBJ1iGt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Rn5Ay0m12IVZQeo3EqueLf0qwBG2bayA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object p0

    .line 9828
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07(Z)Lcom/facebook/ads/redexgen/X/2v;
    .locals 0

    .line 9829
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2v;->A02:Z

    .line 9830
    return-object p0
.end method

.method public final A08(Z)Lcom/facebook/ads/redexgen/X/2v;
    .locals 0

    .line 9831
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2v;->A03:Z

    .line 9832
    return-object p0
.end method

.method public final A09(Z)Lcom/facebook/ads/redexgen/X/2v;
    .locals 0

    .line 9833
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2v;->A04:Z

    .line 9834
    return-object p0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/AW;
    .locals 1

    .line 9835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2v;->A0B()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/AW;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9836
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/2v;Lcom/facebook/ads/redexgen/X/2r;)V

    return-object v0
.end method
