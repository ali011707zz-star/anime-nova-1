.class public final Lcom/facebook/ads/redexgen/X/h3;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SA;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SA;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/UK;Landroid/graphics/drawable/Drawable;)V
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

    .line 83678
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h3;->A01:Lcom/facebook/ads/redexgen/X/SA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/h3;->A02:Lcom/facebook/ads/redexgen/X/UK;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/h3;->A00:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 83679
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h3;->A02:Lcom/facebook/ads/redexgen/X/UK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h3;->A00:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1P(Landroid/graphics/drawable/Drawable;)V

    .line 83680
    return-void
.end method
