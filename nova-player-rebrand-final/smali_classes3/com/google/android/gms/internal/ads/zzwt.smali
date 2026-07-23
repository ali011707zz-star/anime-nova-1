.class final synthetic Lcom/google/android/gms/internal/ads/zzwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzwu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzwb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwg;

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwt;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwt;->zzb:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwt;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzwt;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzwu;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwv;

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwt;->zzb:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwt;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwt;->zzd:I

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwv;->zzai(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V

    return-void
.end method
