.class public final Lcom/facebook/ads/redexgen/X/jx;
.super Lcom/facebook/ads/redexgen/X/N4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/80;->AAt(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/N9;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/80;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/76;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3134
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bMkIe4HHzeEAIK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wvvk6JXeoGYrQUt6QbLdYhjQYYfi53dR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vUaO3wypQXV6NlpG4vA9ecCDTWnzdNvx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "btTnQ58GcbMs0xrA6ag"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uPcaf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "63yRelZMLNO9Px2VKweOh9y3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uSQS7xV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6B8EZAVNEh4nIf7eFA6RS1UfCbAYEEi0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jx;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/80;Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 89230
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jx;->A01:Lcom/facebook/ads/redexgen/X/80;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jx;->A02:Lcom/facebook/ads/redexgen/X/76;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jx;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N4;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 89231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jx;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jx;->A00:Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4R(Z)V

    .line 89232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jx;->A00:Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v0, :cond_0

    .line 89233
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jx;->A00:Lcom/facebook/ads/redexgen/X/N9;

    sget-object v2, Lcom/facebook/ads/redexgen/X/jx;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/jx;->A03:[Ljava/lang/String;

    const-string v1, "cKnhjiPIAYzu4sHLc7xY44MJ7ERYjZpV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "VDOCXXkozOxHXBfHSThQ3rlqz7gvm39S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jx;->A01:Lcom/facebook/ads/redexgen/X/80;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADE(Lcom/facebook/ads/redexgen/X/k8;)V

    .line 89234
    :cond_0
    return-void

    .line 89235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
