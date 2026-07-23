.class public final Lcom/google/android/gms/internal/ads/zzxt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzxc;

.field private zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzafa;)V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzxs;-><init>(Lcom/google/android/gms/internal/ads/zzafa;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaaw;

    const/4 v1, -0x1

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->zza:Lcom/google/android/gms/internal/ads/zzha;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzb:Lcom/google/android/gms/internal/ads/zzxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzd:Lcom/google/android/gms/internal/ads/zzaaw;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzxt;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzc:I

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzxu;
    .locals 13

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxt;->zza:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzb:Lcom/google/android/gms/internal/ads/zzxc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzd:Lcom/google/android/gms/internal/ads/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxu;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzxt;->zzc:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzxu;-><init>(Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzaaw;IZILcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgru;[B)V

    return-object v1
.end method
