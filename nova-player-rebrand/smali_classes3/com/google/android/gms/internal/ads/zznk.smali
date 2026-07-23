.class final synthetic Lcom/google/android/gms/internal/ads/zznk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmy;

.field private final synthetic zzb:I

.field private final synthetic zzc:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmy;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zza:Lcom/google/android/gms/internal/ads/zzmy;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzc:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzna;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zza:Lcom/google/android/gms/internal/ads/zzmy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzc:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzna;->zzm(Lcom/google/android/gms/internal/ads/zzmy;IJ)V

    return-void
.end method
