.class public final Lcom/player/easy/ui/search/SearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchFragment.kt"

# interfaces
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0010J\u001a\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!J\u0014\u0010\"\u001a\u00020\u00102\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\u001a\u0010&\u001a\u00020\'2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010(\u001a\u00020)H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006*"
    }
    d2 = {
        "Lcom/player/easy/ui/search/SearchFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;",
        "<init>",
        "()V",
        "searchView",
        "Landroidx/appcompat/widget/SearchView;",
        "adapter",
        "Lcom/player/easy/ui/search/SearchAdapter;",
        "shareViewModel",
        "Lcom/player/easy/ui/main/SharedViewModel;",
        "getShareViewModel",
        "()Lcom/player/easy/ui/main/SharedViewModel;",
        "shareViewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "popFragment",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "onDestroyView",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "getResultSet",
        "",
        "Lcom/player/easy/ui/search/SearchItem;",
        "query",
        "",
        "setItems",
        "searchResult",
        "getFilteredResults",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "onItemClick",
        "",
        "position",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFragment.kt\ncom/player/easy/ui/search/SearchFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n172#2,9:150\n257#3,2:159\n1586#4:161\n1661#4,3:162\n777#4:165\n873#4,2:166\n*S KotlinDebug\n*F\n+ 1 SearchFragment.kt\ncom/player/easy/ui/search/SearchFragment\n*L\n30#1:150,9\n41#1:159,2\n122#1:161\n122#1:162,3\n138#1:165\n138#1:166,2\n*E\n"
    }
.end annotation


# instance fields
.field private adapter:Lcom/player/easy/ui/search/SearchAdapter;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field private final shareViewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Q3L4tYGQu8byWb2tHvmw3YgZVB4(Lcom/player/easy/ui/search/SearchFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/search/SearchFragment;->onCreate$lambda$0(Lcom/player/easy/ui/search/SearchFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 24
    sget v0, Lcom/player/easy/R$layout;->search_fragment:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 153
    const-class v0, Lcom/player/easy/ui/main/SharedViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/player/easy/ui/search/SearchFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/search/SearchFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/player/easy/ui/search/SearchFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/player/easy/ui/search/SearchFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/player/easy/ui/search/SearchFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/search/SearchFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/player/easy/ui/search/SearchFragment;->shareViewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getFilteredResults(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/player/easy/ui/search/SearchFragment;->getShareViewModel()Lcom/player/easy/ui/main/SharedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/ui/main/SharedViewModel;->getVideos()Ljava/util/List;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/player/easy/ui/videos/VideoStore;

    .line 138
    invoke-virtual {v3}, Lcom/player/easy/ui/videos/VideoStore;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic getResultSet$default(Lcom/player/easy/ui/search/SearchFragment;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/player/easy/ui/search/SearchFragment;->getResultSet(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getShareViewModel()Lcom/player/easy/ui/main/SharedViewModel;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchFragment;->shareViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/main/SharedViewModel;

    return-object v0
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/ui/search/SearchFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$addCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/player/easy/ui/search/SearchFragment;->popFragment()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getResultSet(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/search/SearchItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 121
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/player/easy/ui/search/SearchFragment;->getFilteredResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    check-cast v1, Lcom/player/easy/ui/videos/VideoStore;

    .line 122
    new-instance v2, Lcom/player/easy/ui/search/SearchItem;

    invoke-direct {v2, v1}, Lcom/player/easy/ui/search/SearchItem;-><init>(Lcom/player/easy/ui/videos/VideoStore;)V

    .line 163
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 125
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v3, Lcom/player/easy/ui/search/SearchFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/search/SearchFragment;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget v0, Lcom/player/easy/R$menu;->search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    sget p2, Lcom/player/easy/R$id;->action_search:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/player/easy/ui/search/SearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    const-string v0, "searchView"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    const v2, 0x7fffffff

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 84
    iget-object p2, p0, Lcom/player/easy/ui/search/SearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/player/easy/R$string;->action_search:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    const/4 p2, 0x1

    .line 87
    invoke-static {p0, v1, p2, v1}, Lcom/player/easy/ui/search/SearchFragment;->getResultSet$default(Lcom/player/easy/ui/search/SearchFragment;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/player/easy/ui/search/SearchFragment;->setItems(Ljava/util/List;)V

    .line 90
    new-instance v2, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$1;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$1;-><init>(Lcom/player/easy/ui/search/SearchFragment;)V

    .line 89
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 102
    iget-object p1, p0, Lcom/player/easy/ui/search/SearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 103
    :cond_3
    new-instance v2, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2;-><init>(Lcom/player/easy/ui/search/SearchFragment;)V

    .line 102
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 116
    iget-object p1, p0, Lcom/player/easy/ui/search/SearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    const-string p1, ""

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/player/easy/ui/search/SearchFragment;->adapter:Lcom/player/easy/ui/search/SearchAdapter;

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 3

    .line 142
    iget-object p1, p0, Lcom/player/easy/ui/search/SearchFragment;->adapter:Lcom/player/easy/ui/search/SearchAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 143
    :cond_0
    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/search/SearchItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/player/easy/ui/search/SearchItem;->getVideo()Lcom/player/easy/ui/videos/VideoStore;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    sget-object p2, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1, p1}, Lcom/player/easy/player/ExoPlayerActivity$Companion;->intentSharedLocal(Landroid/content/Context;Lcom/player/easy/ui/videos/VideoStore;)Landroid/content/Intent;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    invoke-static {p1}, Lcom/player/easy/databinding/SearchFragmentBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/SearchFragmentBinding;

    move-result-object p2

    const-string v0, "bind(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/player/easy/ui/search/SearchAdapter;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/search/SearchAdapter;-><init>(Lcom/player/easy/ui/search/SearchFragment;)V

    iput-object v0, p0, Lcom/player/easy/ui/search/SearchFragment;->adapter:Lcom/player/easy/ui/search/SearchAdapter;

    .line 65
    iget-object v0, p2, Lcom/player/easy/databinding/SearchFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object p1, p2, Lcom/player/easy/databinding/SearchFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 67
    iget-object p1, p2, Lcom/player/easy/databinding/SearchFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/player/easy/ui/search/SearchFragment;->adapter:Lcom/player/easy/ui/search/SearchAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final popFragment()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/player/easy/ui/main/MainActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/player/easy/ui/main/MainActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/player/easy/util/ViewExtKt;->hideKeyboard(Landroid/view/View;)V

    .line 41
    :cond_2
    invoke-virtual {v0}, Lcom/player/easy/ui/main/MainActivity;->getBinding()Lcom/player/easy/databinding/ActivityMainBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/player/easy/databinding/ActivityMainBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v2, "bottomNav"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-virtual {v0}, Lcom/player/easy/ui/main/MainActivity;->getBinding()Lcom/player/easy/databinding/ActivityMainBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/player/easy/databinding/ActivityMainBinding;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "beginTransaction(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    const-string v2, "nav_files"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 53
    :goto_2
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "searchResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchFragment;->adapter:Lcom/player/easy/ui/search/SearchAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/search/SearchAdapter;->updateDataSet(Ljava/util/List;)V

    :cond_0
    return-void
.end method
