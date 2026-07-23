.class public Lcom/google/android/gms/internal/ads/zzcue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwd;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfis;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcwd;Lcom/google/android/gms/internal/ads/zzfis;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzb:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcue;->zza:Lcom/google/android/gms/internal/ads/zzcwd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzc:Lcom/google/android/gms/internal/ads/zzfis;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcjl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzb:Landroid/view/View;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcwd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zza:Lcom/google/android/gms/internal/ads/zzcwd;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfis;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzc:Lcom/google/android/gms/internal/ads/zzfis;

    return-object v0
.end method

.method public zze(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdcr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdcr;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
