.class public final Lcom/facebook/ads/redexgen/X/Ir;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dE;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dM;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Sx;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/dK;Z)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gi;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40899
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Lcom/facebook/ads/redexgen/X/gi;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9s(Ljava/lang/String;)V
    .locals 2

    .line 40900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/dM;->A06(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;)V

    .line 40901
    return-void
.end method
