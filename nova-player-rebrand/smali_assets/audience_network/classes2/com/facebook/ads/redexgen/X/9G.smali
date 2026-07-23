.class public final Lcom/facebook/ads/redexgen/X/9G;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9F;

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/3l;

.field public A03:Lcom/facebook/ads/redexgen/X/8R;

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23879
    sget-object v0, Lcom/facebook/ads/redexgen/X/8R;->A04:Lcom/facebook/ads/redexgen/X/8R;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A03:Lcom/facebook/ads/redexgen/X/8R;

    .line 23880
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A01:I

    .line 23881
    sget-object v0, Lcom/facebook/ads/redexgen/X/9F;->A00:Lcom/facebook/ads/redexgen/X/9F;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/9F;

    .line 23882
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9G;)I
    .locals 0

    .line 23883
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9G;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9G;)Lcom/facebook/ads/redexgen/X/3l;
    .locals 0

    .line 23884
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/3l;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9G;)Lcom/facebook/ads/redexgen/X/8R;
    .locals 0

    .line 23885
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9G;->A03:Lcom/facebook/ads/redexgen/X/8R;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9G;)Z
    .locals 0

    .line 23886
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/9G;->A05:Z

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9G;)Z
    .locals 0

    .line 23887
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/9G;->A04:Z

    return p0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/3l;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 23888
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23889
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/3l;

    .line 23890
    return-object p0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/8R;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 23891
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23892
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A03:Lcom/facebook/ads/redexgen/X/8R;

    .line 23893
    return-object p0
.end method

.method public final A07([Lcom/facebook/ads/redexgen/X/3k;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 1

    .line 23894
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23895
    new-instance v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/A4;-><init>([Lcom/facebook/ads/redexgen/X/3k;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9G;->A05(Lcom/facebook/ads/redexgen/X/3l;)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    return-object v0
.end method
