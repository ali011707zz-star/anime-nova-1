.class public final Lcom/facebook/ads/redexgen/X/TY;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Te;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V
    .locals 0

    .line 65521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65522
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TY;->A02:Ljava/lang/String;

    .line 65523
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TY;->A00:I

    .line 65524
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TY;->A01:Lcom/facebook/ads/redexgen/X/Te;

    .line 65525
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 65526
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TY;->A00:I

    return v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Te;
    .locals 1

    .line 65527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TY;->A01:Lcom/facebook/ads/redexgen/X/Te;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 65528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TY;->A02:Ljava/lang/String;

    return-object v0
.end method
