.class final synthetic Lcom/google/android/gms/internal/ads/zzgpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgpo;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgpv;

.field private final synthetic zzc:I

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgpt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpv;ILcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zza:Lcom/google/android/gms/internal/ads/zzgpo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zzb:Lcom/google/android/gms/internal/ads/zzgpv;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zzd:Lcom/google/android/gms/internal/ads/zzgpt;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zza:Lcom/google/android/gms/internal/ads/zzgpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zzb:Lcom/google/android/gms/internal/ads/zzgpv;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgpc;->zzd:Lcom/google/android/gms/internal/ads/zzgpt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgpo;->zzg(Lcom/google/android/gms/internal/ads/zzgpv;ILcom/google/android/gms/internal/ads/zzgpt;)V

    return-void
.end method
