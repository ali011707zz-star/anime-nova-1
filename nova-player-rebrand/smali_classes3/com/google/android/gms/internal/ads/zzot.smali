.class final synthetic Lcom/google/android/gms/internal/ads/zzot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmy;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmy;IJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzot;->zza:Lcom/google/android/gms/internal/ads/zzmy;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzot;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzot;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzot;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzna;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzot;->zza:Lcom/google/android/gms/internal/ads/zzmy;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzot;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzot;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzot;->zzd:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzna;->zzdg(Lcom/google/android/gms/internal/ads/zzmy;IJJ)V

    return-void
.end method
