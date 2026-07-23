.class public final Lcom/facebook/ads/redexgen/X/YR;
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
.field public final synthetic A00:Landroid/widget/EditText;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pp;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/Pp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YR;->A00:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 74074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/Pp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Pp;->A05(Lcom/facebook/ads/redexgen/X/Pp;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/YR;Landroid/content/DialogInterface;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74075
    return-void
.end method
