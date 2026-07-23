.class public final Lcom/google/android/gms/internal/ads/zzfzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzd;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfzd;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzd;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmh;->zza()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcml;->zzc()Lcom/google/android/gms/internal/ads/zzfzh;

    move-result-object v1

    .line 2
    const-string v2, "context"

    .line 4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "coroutineScopeProvider"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfzb;->zza:Lcom/google/android/gms/internal/ads/zzfzb;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfzh;->zza()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 4
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfzc;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/zzfzc;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v3 .. v10}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
