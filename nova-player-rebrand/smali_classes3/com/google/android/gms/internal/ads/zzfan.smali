.class public final Lcom/google/android/gms/internal/ads/zzfan;
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

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfan;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfan;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfan;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfan;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfal;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcmj;->zza()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcna;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcna;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcmp;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcmp;->zza()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfal;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfal;-><init>(Lcom/google/android/gms/internal/ads/zzgzy;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfan;->zza()Lcom/google/android/gms/internal/ads/zzfal;

    move-result-object v0

    return-object v0
.end method
