.class final Lcom/google/ads/interactivemedia/v3/internal/zzyr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzyt;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Ljava/lang/reflect/Method;

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

.field final synthetic zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

.field final synthetic zze:Z

.field final synthetic zzf:Z


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzyx;Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lcom/google/ads/interactivemedia/v3/internal/zzvp;Lcom/google/ads/interactivemedia/v3/internal/zzvp;ZZ)V
    .locals 0

    .line 1
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zza:Z

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzb:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zze:Z

    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzf:Z

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzyt;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zza:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzb:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzh:Ljava/lang/reflect/Field;

    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzb:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzb:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzb(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x19

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Accessor "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " threw exception"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzh:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-ne v0, p2, :cond_3

    return-void

    .line 3
    :cond_3
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    .line 9
    invoke-virtual {p2, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V

    return-void
.end method

.method final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabb;I[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zze:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzi:Ljava/lang/String;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zzvg;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x50

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "null is not allowed as value for record component \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' of primitive type; at path "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvg;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2
    :cond_1
    :goto_0
    aput-object v0, p3, p2

    return-void
.end method

.method final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabb;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zze:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zza:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzh:Ljava/lang/reflect/Field;

    .line 2
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_1

    .line 3
    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyr;->zzf:Z

    if-nez v0, :cond_3

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzh:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zzh:Ljava/lang/reflect/Field;

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzb(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot set value of \'static final\' "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/String;)V

    throw p2
.end method
