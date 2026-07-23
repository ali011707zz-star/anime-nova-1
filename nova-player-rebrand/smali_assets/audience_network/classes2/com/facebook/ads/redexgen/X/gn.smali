.class public final Lcom/facebook/ads/redexgen/X/gn;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sp;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Sq;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Sx;

.field public final synthetic A03:Ljava/util/ArrayList;

.field public final synthetic A04:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2904
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "peP5GJDM9me8QDpiMTE0HYbhk5UQvsuj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UmJsGkUZcFFvxG21gGzKuNxtLbnsNH0B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "InCZKAYVJ2xyVT3RLHGk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cxu83bHx4KSubY78z6WW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "55WyHuuOCemh1dLUozRA9kNqY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hUMsj3tCoCX6inz1bILbzXUTN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ib1pT8H4oQaxudtz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "STVRCs5pIYaR1pHj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gn;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sx;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/Sp;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 83494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gn;->A03:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gn;->A01:Lcom/facebook/ads/redexgen/X/Sq;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/gn;->A00:Lcom/facebook/ads/redexgen/X/Sp;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/gn;->A04:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 8

    .line 83495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A03:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    .line 83496
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_4

    .line 83497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/gi;

    .line 83498
    .local v1, "adContext":Lcom/facebook/ads/redexgen/X/gi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A01:Lcom/facebook/ads/redexgen/X/Sq;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Sq;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 83499
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/gn;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 83500
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83501
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83502
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(Lcom/facebook/ads/redexgen/X/Sx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/gn;->A01:Lcom/facebook/ads/redexgen/X/Sq;

    sget-object v4, Lcom/facebook/ads/redexgen/X/gn;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v4, v0

    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 83503
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/gn;->A05:[Ljava/lang/String;

    const-string v1, "xsAs6ZK2AKeTr6tr707KlGvOM"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "GxI5mwrGpMJ9ldsuxbhmmAcT7"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Sq;->A00:I

    .line 83504
    invoke-interface {v6, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A4q(JI)V

    goto :goto_1

    .line 83505
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83506
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(Lcom/facebook/ads/redexgen/X/Sx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A01:Lcom/facebook/ads/redexgen/X/Sq;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Sq;->A00:I

    .line 83507
    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A4o(JI)V

    goto :goto_1

    .line 83508
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/gn;->A05:[Ljava/lang/String;

    const-string v1, "VVOoEaVD2AhQqE2eihnl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7KTPepw5ZZxiUEMCto3C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_5

    .line 83509
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(Lcom/facebook/ads/redexgen/X/Sx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A4p(J)V

    .line 83510
    .end local v1    # "adContext":Lcom/facebook/ads/redexgen/X/gi;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A01(Lcom/facebook/ads/redexgen/X/Sx;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/go;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/go;-><init>(Lcom/facebook/ads/redexgen/X/gn;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A04:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83512
    return-void

    .line 83513
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(Lcom/facebook/ads/redexgen/X/Sx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A4n(J)V

    goto :goto_1
.end method
