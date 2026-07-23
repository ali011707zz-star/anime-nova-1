.class public final Lcom/google/android/gms/internal/ads/zzfrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfrk;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfrk;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfrg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfrg;->zza()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v1

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcmj;->zza()Landroid/content/Context;

    move-result-object v2

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfrk;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/util/Clock;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfrj;

    .line 4
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfrj;-><init>(Lcom/google/android/gms/internal/ads/zzfsb;Lcom/google/android/gms/internal/ads/zzfrf;Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;)V

    return-object v4
.end method
