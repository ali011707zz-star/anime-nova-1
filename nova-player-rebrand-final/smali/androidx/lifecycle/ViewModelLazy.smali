.class public final Landroidx/lifecycle/ViewModelLazy;
.super Ljava/lang/Object;
.source "ViewModelLazy.kt"

# interfaces
.implements Lkotlin/Lazy;


# instance fields
.field private cached:Landroidx/lifecycle/ViewModel;

.field private final extrasProducer:Lkotlin/jvm/functions/Function0;

.field private final factoryProducer:Lkotlin/jvm/functions/Function0;

.field private final storeProducer:Lkotlin/jvm/functions/Function0;

.field private final viewModelClass:Lkotlin/reflect/KClass;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasProducer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lkotlin/reflect/KClass;

    .line 39
    iput-object p2, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Lkotlin/jvm/functions/Function0;

    .line 40
    iput-object p3, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Lkotlin/jvm/functions/Function0;

    .line 41
    iput-object p4, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public getValue()Landroidx/lifecycle/ViewModel;
    .locals 4

    .line 47
    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    .line 50
    iget-object v1, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 51
    iget-object v2, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 52
    sget-object v3, Landroidx/lifecycle/ViewModelProvider;->Companion:Landroidx/lifecycle/ViewModelProvider$Companion;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider$Companion;->create(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lkotlin/reflect/KClass;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
