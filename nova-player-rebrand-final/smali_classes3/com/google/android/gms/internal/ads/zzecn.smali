.class public final Lcom/google/android/gms/internal/ads/zzecn;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecn;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecn;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecn;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzecn;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzecn;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecn;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzecn;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecn;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecn;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdxz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecn;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcmj;->zza()Landroid/content/Context;

    move-result-object v2

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzecn;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcmd;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcmd;->zza()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzecm;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzecm;-><init>(Lcom/google/android/gms/internal/ads/zzecj;Lcom/google/android/gms/internal/ads/zzdxz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v4
.end method
