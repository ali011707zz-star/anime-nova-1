.class public final Lcom/google/android/gms/internal/ads/zzdwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwy;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwy;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwy;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdwy;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdwy;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwy;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfdh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdh;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwy;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcmj;->zza()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwy;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzikk;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzikk;->zzd()Ljava/util/Map;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzgd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbgd;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbgi;

    .line 8
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzbgd;-><init>(Lcom/google/android/gms/internal/ads/zzbgi;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzb(Lcom/google/android/gms/internal/ads/zzbgc;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxb;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzdxb;-><init>(Lcom/google/android/gms/internal/ads/zzbgd;Ljava/util/Map;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdje;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
