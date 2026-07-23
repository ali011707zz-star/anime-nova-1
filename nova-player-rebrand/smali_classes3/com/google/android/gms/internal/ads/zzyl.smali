.class public final Lcom/google/android/gms/internal/ads/zzyl;
.super Lcom/google/android/gms/internal/ads/zzvy;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Lcom/google/android/gms/internal/ads/zzbf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzc:Lcom/google/android/gms/internal/ads/zzak;

    return-void
.end method


# virtual methods
.method public final zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzc:Lcom/google/android/gms/internal/ads/zzak;

    .line 2
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzd:Lcom/google/android/gms/internal/ads/zzak;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzc:Ljava/lang/Object;

    return-object p2
.end method
