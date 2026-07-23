.class public final synthetic Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/databinding/FoldersFragmentBinding;

.field public final synthetic f$1:Lcom/player/easy/ui/folders/FoldersFragment;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/databinding/FoldersFragmentBinding;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;->f$0:Lcom/player/easy/databinding/FoldersFragmentBinding;

    iput-object p2, p0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;->f$1:Lcom/player/easy/ui/folders/FoldersFragment;

    iput-object p3, p0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;->f$0:Lcom/player/easy/databinding/FoldersFragmentBinding;

    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;->f$1:Lcom/player/easy/ui/folders/FoldersFragment;

    iget-object v2, p0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    check-cast p1, Lcom/player/easy/util/result/Result;

    invoke-static {v0, v1, v2, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->$r8$lambda$n0H_MFRAEjqQOlZ1flX0AwM3r4s(Lcom/player/easy/databinding/FoldersFragmentBinding;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/os/Bundle;Lcom/player/easy/util/result/Result;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
