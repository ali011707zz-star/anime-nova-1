.class final synthetic Lcom/google/android/gms/ads/internal/util/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzat;

.field private final synthetic zzb:I

.field private final synthetic zzc:I

.field private final synthetic zzd:I

.field private final synthetic zze:I

.field private final synthetic zzf:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzat;IIIII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzb:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzc:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzd:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zze:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzf:I

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzb:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzc:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzd:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zze:I

    iget v5, p0, Lcom/google/android/gms/ads/internal/util/zzad;->zzf:I

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/util/zzat;->zzh(IIIIILandroid/content/DialogInterface;I)V

    return-void
.end method
