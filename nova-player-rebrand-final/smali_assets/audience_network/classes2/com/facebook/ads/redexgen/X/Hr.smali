.class public final Lcom/facebook/ads/redexgen/X/Hr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A0p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 800
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lymitVL5Elx23yNuagrdcc1tj4byFzuO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OtHhm4I6MY8qhok47NcALtT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GJmhN4rXhrf709OMeDU9UKBK4KfDlX2Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UKN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ioCWBc07RK8NAgZ7uqzQ2Ov99bHrMaFb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vsb8Ufoa8H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zp4FcHB1hqlJdpy7ZALmHMQwB62WRf78"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qbR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hr;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hr;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hr;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x66

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

    const/16 v3, 0x13

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hr;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hr;->A02:[Ljava/lang/String;

    const-string v1, "68tvMXLM0DzUKrc9PEEpmru8eIlurAzh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "oZlS45uLmtttWs7KR8Y8sKnmk93hftbi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hr;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x31t
        0x23t
        0x30t
        0x1dt
        0x2ct
        0x1ft
        0x34t
        0x27t
        0x25t
        0x1ft
        0x32t
        0x27t
        0x2dt
        0x2ct
        0x1dt
        0x27t
        0x1ft
        0x20t
    .end array-data
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 2

    .line 39968
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A13(Lcom/facebook/ads/redexgen/X/55;Z)Z

    .line 39969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0B(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0B(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 39971
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0B(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 39972
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 4

    .line 39973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/55;->A13(Lcom/facebook/ads/redexgen/X/55;Z)Z

    .line 39974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0B(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 39975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0A(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0A(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M8;->setUrl(Ljava/lang/String;)V

    .line 39977
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A11(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A02(Lcom/facebook/ads/redexgen/X/55;)I

    move-result v0

    if-le v0, v2, :cond_1

    .line 39978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/55;->A15(Lcom/facebook/ads/redexgen/X/55;Z)Z

    .line 39979
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hr;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/55;->A0l(Lcom/facebook/ads/redexgen/X/55;Ljava/lang/String;)V

    .line 39980
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hr;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hr;->A02:[Ljava/lang/String;

    const-string v1, "Ijw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "65M"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/55;->A03(Lcom/facebook/ads/redexgen/X/55;)I

    .line 39981
    return-void
.end method

.method public final AFY(I)V
    .locals 1

    .line 39982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A10(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0B(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0B(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 39984
    :cond_0
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 39985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0A(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0A(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M8;->setTitle(Ljava/lang/String;)V

    .line 39987
    :cond_0
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 39988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 39989
    return-void
.end method
