.class public final Lcom/player/easy/player/ExoViewModel$ViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "ExoViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/player/ExoViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModelFactory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\u0008\u001a\u0002H\t\"\u0008\u0008\u0000\u0010\t*\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000cH\u0016\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/player/easy/player/ExoViewModel$ViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "activity",
        "Lcom/player/easy/player/ExoPlayerActivity;",
        "<init>",
        "(Lcom/player/easy/player/ExoPlayerActivity;)V",
        "getActivity",
        "()Lcom/player/easy/player/ExoPlayerActivity;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activity:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/player/easy/player/ExoViewModel$ViewModelFactory;->activity:Lcom/player/easy/player/ExoPlayerActivity;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/player/easy/player/ExoViewModel$ViewModelFactory;->activity:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ads_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 140
    new-instance v0, Lcom/player/easy/player/ExoViewModel;

    invoke-direct {v0, p1}, Lcom/player/easy/player/ExoViewModel;-><init>(Z)V

    return-object v0
.end method

.method public final getActivity()Lcom/player/easy/player/ExoPlayerActivity;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel$ViewModelFactory;->activity:Lcom/player/easy/player/ExoPlayerActivity;

    return-object v0
.end method
