.class public final synthetic Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/finished/FinishedFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/player/easy/ui/finished/FinishedItem;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/finished/FinishedFragment;ILcom/player/easy/ui/finished/FinishedItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;->f$0:Lcom/player/easy/ui/finished/FinishedFragment;

    iput p2, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;->f$2:Lcom/player/easy/ui/finished/FinishedItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;->f$0:Lcom/player/easy/ui/finished/FinishedFragment;

    iget v1, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;->f$2:Lcom/player/easy/ui/finished/FinishedItem;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/player/easy/ui/finished/FinishedFragment;->$r8$lambda$lAWpgTphJ2GbLyLXoTm-_JZ-2h8(Lcom/player/easy/ui/finished/FinishedFragment;ILcom/player/easy/ui/finished/FinishedItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
