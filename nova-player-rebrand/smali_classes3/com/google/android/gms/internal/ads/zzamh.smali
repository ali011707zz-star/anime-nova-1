.class final synthetic Lcom/google/android/gms/internal/ads/zzamh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzami;

.field private final synthetic zzb:J

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzami;JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zza:Lcom/google/android/gms/internal/ads/zzami;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zza:Lcom/google/android/gms/internal/ads/zzami;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzami;->zzh(JILcom/google/android/gms/internal/ads/zzalx;)V

    return-void
.end method
