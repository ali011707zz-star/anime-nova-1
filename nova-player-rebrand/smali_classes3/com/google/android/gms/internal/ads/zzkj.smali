.class final synthetic Lcom/google/android/gms/internal/ads/zzkj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field private final synthetic zza:I

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzba;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzba;


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkj;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzba;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzc:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaz;

    sget v0, Lcom/google/android/gms/internal/ads/zzks;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzc:Lcom/google/android/gms/internal/ads/zzba;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkj;->zza:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zzo(Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzba;I)V

    return-void
.end method
