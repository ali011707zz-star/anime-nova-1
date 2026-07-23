.class public final Lcom/facebook/ads/redexgen/X/A4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/9y;

.field public final A01:Lcom/facebook/ads/redexgen/X/oJ;

.field public final A02:[Lcom/facebook/ads/redexgen/X/3k;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/3k;)V
    .locals 2

    .line 26940
    new-instance v1, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/9y;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/oJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oJ;-><init>()V

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/A4;-><init>([Lcom/facebook/ads/redexgen/X/3k;Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/oJ;)V

    .line 26941
    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/3k;Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/oJ;)V
    .locals 3

    .line 26942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26943
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/3k;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:[Lcom/facebook/ads/redexgen/X/3k;

    .line 26944
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:[Lcom/facebook/ads/redexgen/X/3k;

    array-length v1, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26945
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/9y;

    .line 26946
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:Lcom/facebook/ads/redexgen/X/oJ;

    .line 26947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:[Lcom/facebook/ads/redexgen/X/3k;

    array-length v0, p1

    aput-object p2, v1, v0

    .line 26948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:[Lcom/facebook/ads/redexgen/X/3k;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    aput-object p3, v1, v0

    .line 26949
    return-void
.end method


# virtual methods
.method public final A4F(Lcom/facebook/ads/redexgen/X/px;)Lcom/facebook/ads/redexgen/X/px;
    .locals 2

    .line 26950
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:Lcom/facebook/ads/redexgen/X/oJ;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oJ;->A02(F)V

    .line 26951
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:Lcom/facebook/ads/redexgen/X/oJ;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A00:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oJ;->A01(F)V

    .line 26952
    return-object p1
.end method

.method public final A4G(Z)Z
    .locals 1

    .line 26953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A0D(Z)V

    .line 26954
    return p1
.end method

.method public final A6z()[Lcom/facebook/ads/redexgen/X/3k;
    .locals 1

    .line 26955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:[Lcom/facebook/ads/redexgen/X/3k;

    return-object v0
.end method

.method public final A8U(J)J
    .locals 2

    .line 26956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:Lcom/facebook/ads/redexgen/X/oJ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/oJ;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A98()J
    .locals 2

    .line 26957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9y;->A0C()J

    move-result-wide v0

    return-wide v0
.end method
