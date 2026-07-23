.class public final Lcom/facebook/ads/redexgen/X/L1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/L2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:Lcom/facebook/ads/redexgen/X/HR;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 963
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4S0ZR9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9atY4pLS3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JCkQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0FGnuhRUJbXFjAeocMQA4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Bc2FjzyWuEwoYoDKosvue"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DSb6itpNp95G1DjaOdl5F45O"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d2IfSwPvc8yd2jGVLBTV47FBT3G8Pl4J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SXUDcryZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L1;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/L0;)V
    .locals 0

    .line 48982
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L1;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/L1;)Z
    .locals 6

    .line 48983
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0F:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 48984
    return v5

    .line 48985
    :cond_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A0F:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 48986
    return v2

    .line 48987
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A09:Lcom/facebook/ads/redexgen/X/HR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/HR;

    .line 48988
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/HR;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A09:Lcom/facebook/ads/redexgen/X/HR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/HR;

    .line 48989
    .local v3, "otherSpsData":Lcom/facebook/ads/redexgen/X/HR;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A03:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A07:I

    if-ne v1, v0, :cond_6

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A0C:Z

    if-ne v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0B:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A0B:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A0A:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A0A:Z

    if-ne v1, v0, :cond_6

    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A05:I

    if-eq v1, v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A05:I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A05:I

    if-eqz v0, :cond_6

    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/HR;->A07:I

    if-nez v0, :cond_4

    iget v0, v3, Lcom/facebook/ads/redexgen/X/HR;->A07:I

    if-nez v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A06:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A02:I

    if-ne v1, v0, :cond_6

    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/HR;->A07:I

    if-ne v0, v2, :cond_5

    iget v0, v3, Lcom/facebook/ads/redexgen/X/HR;->A07:I

    if-ne v0, v2, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A00:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A01:I

    if-ne v1, v0, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A0E:Z

    if-ne v1, v0, :cond_6

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/L1;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/L1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/L1;->A0G:[Ljava/lang/String;

    const-string v1, "vYoSPXEMP2H1rloX7Zmdh99svIQCcR37"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/L1;->A04:I

    if-eq v1, v0, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    return v5

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/L1;Lcom/facebook/ads/redexgen/X/L1;)Z
    .locals 0

    .line 48990
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/L1;->A00(Lcom/facebook/ads/redexgen/X/L1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 48991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0D:Z

    .line 48992
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0F:Z

    .line 48993
    return-void
.end method

.method public final A03(I)V
    .locals 1

    .line 48994
    iput p1, p0, Lcom/facebook/ads/redexgen/X/L1;->A08:I

    .line 48995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0D:Z

    .line 48996
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/HR;IIIIZZZZIIIII)V
    .locals 1

    .line 48997
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L1;->A09:Lcom/facebook/ads/redexgen/X/HR;

    .line 48998
    iput p2, p0, Lcom/facebook/ads/redexgen/X/L1;->A05:I

    .line 48999
    iput p3, p0, Lcom/facebook/ads/redexgen/X/L1;->A08:I

    .line 49000
    iput p4, p0, Lcom/facebook/ads/redexgen/X/L1;->A03:I

    .line 49001
    iput p5, p0, Lcom/facebook/ads/redexgen/X/L1;->A07:I

    .line 49002
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/L1;->A0C:Z

    .line 49003
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/L1;->A0B:Z

    .line 49004
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/L1;->A0A:Z

    .line 49005
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/L1;->A0E:Z

    .line 49006
    iput p10, p0, Lcom/facebook/ads/redexgen/X/L1;->A04:I

    .line 49007
    iput p11, p0, Lcom/facebook/ads/redexgen/X/L1;->A06:I

    .line 49008
    iput p12, p0, Lcom/facebook/ads/redexgen/X/L1;->A02:I

    .line 49009
    iput p13, p0, Lcom/facebook/ads/redexgen/X/L1;->A00:I

    .line 49010
    iput p14, p0, Lcom/facebook/ads/redexgen/X/L1;->A01:I

    .line 49011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0F:Z

    .line 49012
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0D:Z

    .line 49013
    return-void
.end method

.method public final A05()Z
    .locals 2

    .line 49014
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L1;->A0D:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A08:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L1;->A08:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
