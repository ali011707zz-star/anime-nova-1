.class public final Lcoil/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/ComponentRegistry$Builder;
    }
.end annotation


# instance fields
.field private final decoders:Ljava/util/List;

.field private final fetchers:Ljava/util/List;

.field private final interceptors:Ljava/util/List;

.field private final mappers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcoil/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcoil/ComponentRegistry;->interceptors:Ljava/util/List;

    .line 19
    iput-object p2, p0, Lcoil/ComponentRegistry;->mappers:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lcoil/ComponentRegistry;->fetchers:Ljava/util/List;

    .line 21
    iput-object p4, p0, Lcoil/ComponentRegistry;->decoders:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getDecoders$coil_base_release()Ljava/util/List;
    .locals 1

    .line 21
    iget-object v0, p0, Lcoil/ComponentRegistry;->decoders:Ljava/util/List;

    return-object v0
.end method

.method public final getFetchers$coil_base_release()Ljava/util/List;
    .locals 1

    .line 20
    iget-object v0, p0, Lcoil/ComponentRegistry;->fetchers:Ljava/util/List;

    return-object v0
.end method

.method public final getInterceptors$coil_base_release()Ljava/util/List;
    .locals 1

    .line 18
    iget-object v0, p0, Lcoil/ComponentRegistry;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getMappers$coil_base_release()Ljava/util/List;
    .locals 1

    .line 19
    iget-object v0, p0, Lcoil/ComponentRegistry;->mappers:Ljava/util/List;

    return-object v0
.end method

.method public final newBuilder()Lcoil/ComponentRegistry$Builder;
    .locals 1

    .line 26
    new-instance v0, Lcoil/ComponentRegistry$Builder;

    invoke-direct {v0, p0}, Lcoil/ComponentRegistry$Builder;-><init>(Lcoil/ComponentRegistry;)V

    return-object v0
.end method
