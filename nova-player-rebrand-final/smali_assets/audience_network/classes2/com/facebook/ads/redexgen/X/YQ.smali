.class public final Lcom/facebook/ads/redexgen/X/YQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Pp;->AFv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74070
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:Lcom/facebook/ads/redexgen/X/Pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74071
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 74072
    return-void
.end method
