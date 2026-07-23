.class final Lcom/google/android/gms/internal/ads/zzvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyc;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzyc;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzvo;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvo;Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzb:Lcom/google/android/gms/internal/ads/zzvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzc:Z

    return-void
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzb:Lcom/google/android/gms/internal/ads/zzvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvo;->zzo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyc;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyc;->zzc()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzb:Lcom/google/android/gms/internal/ads/zzvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvo;->zzo()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzc:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzic;->zzg(I)V

    return v4

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvo;->zzi()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    .line 3
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyc;->zzd(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I

    move-result p3

    const/4 v1, -0x5

    const-wide/high16 v7, -0x8000000000000000L

    if-ne p3, v1, :cond_5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzlh;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzv;->zzJ:I

    const/4 v2, 0x0

    if-nez p3, :cond_2

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzv;->zzK:I

    if-eqz p3, :cond_4

    move p3, v2

    :cond_2
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzK:I

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzI(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzlh;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :cond_4
    return v1

    :cond_5
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_8

    if-ne p3, v4, :cond_6

    iget-wide v9, p2, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    cmp-long p1, v9, v0

    if-gez p1, :cond_7

    :cond_6
    if-ne p3, v2, :cond_8

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzih;->zzd:Z

    if-nez p1, :cond_8

    .line 9
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    .line 10
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzic;->zzg(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzc:Z

    return v4

    :cond_8
    return p3
.end method

.method public final zze(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzb:Lcom/google/android/gms/internal/ads/zzvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvo;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyc;->zze(J)I

    move-result p1

    return p1
.end method
