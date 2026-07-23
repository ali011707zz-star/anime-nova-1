.class public final Lcom/facebook/ads/redexgen/X/do;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Na;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/NY;

.field public final A07:Lcom/facebook/ads/redexgen/X/Nm;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 1

    .line 80360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80361
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/do;->A01:Lcom/facebook/ads/redexgen/X/Na;

    .line 80362
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/do;->A00:I

    .line 80363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/do;->A05:Z

    .line 80364
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/do;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 80365
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/do;->A06:Lcom/facebook/ads/redexgen/X/NY;

    .line 80366
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/do;->A07:Lcom/facebook/ads/redexgen/X/Nm;

    .line 80367
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/do;)I
    .locals 0

    .line 80368
    iget p0, p0, Lcom/facebook/ads/redexgen/X/do;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/NY;
    .locals 0

    .line 80369
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A06:Lcom/facebook/ads/redexgen/X/NY;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/Na;
    .locals 0

    .line 80370
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A01:Lcom/facebook/ads/redexgen/X/Na;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/Nm;
    .locals 0

    .line 80371
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A07:Lcom/facebook/ads/redexgen/X/Nm;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 80372
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A08:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;
    .locals 0

    .line 80373
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;
    .locals 0

    .line 80374
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;
    .locals 0

    .line 80375
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/do;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/do;)Z
    .locals 0

    .line 80376
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/do;->A05:Z

    return p0
.end method


# virtual methods
.method public final A09(I)Lcom/facebook/ads/redexgen/X/do;
    .locals 0

    .line 80377
    iput p1, p0, Lcom/facebook/ads/redexgen/X/do;->A00:I

    .line 80378
    return-object p0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Na;)Lcom/facebook/ads/redexgen/X/do;
    .locals 0

    .line 80379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/do;->A01:Lcom/facebook/ads/redexgen/X/Na;

    .line 80380
    return-object p0
.end method

.method public final A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/do;
    .locals 0

    .line 80381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/do;->A04:Ljava/lang/String;

    .line 80382
    return-object p0
.end method

.method public final A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/do;
    .locals 0

    .line 80383
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/do;->A02:Ljava/lang/String;

    .line 80384
    return-object p0
.end method

.method public final A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/do;
    .locals 0

    .line 80385
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/do;->A03:Ljava/lang/String;

    .line 80386
    return-object p0
.end method

.method public final A0E(Z)Lcom/facebook/ads/redexgen/X/do;
    .locals 0

    .line 80387
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/do;->A05:Z

    .line 80388
    return-object p0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/dq;
    .locals 2

    .line 80389
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/dq;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/dq;-><init>(Lcom/facebook/ads/redexgen/X/do;Lcom/facebook/ads/redexgen/X/GX;)V

    return-object v0
.end method
