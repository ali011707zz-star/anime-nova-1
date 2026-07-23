.class public final Lcom/facebook/ads/redexgen/X/UH;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UI;->A00()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66775
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UH;->A00:Lcom/facebook/ads/redexgen/X/UI;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 66776
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A2j:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ay;->A0D(I)V

    .line 66777
    const/4 v0, 0x1

    return v0
.end method
