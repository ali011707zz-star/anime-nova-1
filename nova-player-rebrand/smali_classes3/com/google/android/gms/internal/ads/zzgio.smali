.class final synthetic Lcom/google/android/gms/internal/ads/zzgio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgis;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgis;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgio;->zza:Lcom/google/android/gms/internal/ads/zzgis;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgio;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgio;->zza:Lcom/google/android/gms/internal/ads/zzgis;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgio;->zzb:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgid;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgis;->zzf(ILcom/google/android/gms/internal/ads/zzgid;)Lcom/google/android/gms/internal/ads/zzgir;

    move-result-object p1

    return-object p1
.end method
