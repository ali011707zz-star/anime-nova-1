.class final synthetic Lcom/google/android/gms/internal/ads/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzak;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzak;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->zza:Lcom/google/android/gms/internal/ads/zzak;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaz;

    sget v0, Lcom/google/android/gms/internal/ads/zzks;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->zza:Lcom/google/android/gms/internal/ads/zzak;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->zzb:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Lcom/google/android/gms/internal/ads/zzak;I)V

    return-void
.end method
