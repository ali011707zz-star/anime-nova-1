package rd;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import okhttp3.HttpUrl;
import okhttp3.ResponseBody;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public static final Type[] f13547a = new Type[0];

    /* compiled from: Utils.java */
    /* loaded from: classes2.dex */
    public static final class a implements GenericArrayType {

        /* renamed from: f, reason: collision with root package name */
        public final Type f13548f;

        public a(Type type) {
            this.f13548f = type;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && v.e(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f13548f;
        }

        public int hashCode() {
            return this.f13548f.hashCode();
        }

        public String toString() {
            return v.u(this.f13548f) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public static final class b implements ParameterizedType {

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        public final Type f13549f;

        /* renamed from: g, reason: collision with root package name */
        public final Type f13550g;

        /* renamed from: h, reason: collision with root package name */
        public final Type[] f13551h;

        public b(@Nullable Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                v.b(type3, "typeArgument == null");
                v.c(type3);
            }
            this.f13549f = type;
            this.f13550g = type2;
            this.f13551h = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && v.e(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f13551h.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        @Nullable
        public Type getOwnerType() {
            return this.f13549f;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f13550g;
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f13551h) ^ this.f13550g.hashCode();
            Type type = this.f13549f;
            return hashCode ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            Type[] typeArr = this.f13551h;
            if (typeArr.length == 0) {
                return v.u(this.f13550g);
            }
            StringBuilder sb2 = new StringBuilder((typeArr.length + 1) * 30);
            sb2.append(v.u(this.f13550g));
            sb2.append("<");
            sb2.append(v.u(this.f13551h[0]));
            for (int i10 = 1; i10 < this.f13551h.length; i10++) {
                sb2.append(", ");
                sb2.append(v.u(this.f13551h[i10]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public static final class c implements WildcardType {

        /* renamed from: f, reason: collision with root package name */
        public final Type f13552f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        public final Type f13553g;

        public c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length <= 1) {
                if (typeArr.length == 1) {
                    if (typeArr2.length == 1) {
                        typeArr2[0].getClass();
                        v.c(typeArr2[0]);
                        if (typeArr[0] == Object.class) {
                            this.f13553g = typeArr2[0];
                            this.f13552f = Object.class;
                            return;
                        }
                        throw new IllegalArgumentException();
                    }
                    typeArr[0].getClass();
                    v.c(typeArr[0]);
                    this.f13553g = null;
                    this.f13552f = typeArr[0];
                    return;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && v.e(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f13553g;
            return type != null ? new Type[]{type} : v.f13547a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f13552f};
        }

        public int hashCode() {
            Type type = this.f13553g;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f13552f.hashCode() + 31);
        }

        public String toString() {
            if (this.f13553g != null) {
                return "? super " + v.u(this.f13553g);
            }
            if (this.f13552f == Object.class) {
                return "?";
            }
            return "? extends " + v.u(this.f13552f);
        }
    }

    public static ResponseBody a(ResponseBody responseBody) throws IOException {
        cd.f fVar = new cd.f();
        responseBody.source().T(fVar);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), fVar);
    }

    public static <T> T b(@Nullable T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    public static void c(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    @Nullable
    public static Class<?> d(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    public static boolean e(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return e(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Type f(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (interfaces[i10] == cls2) {
                    return cls.getGenericInterfaces()[i10];
                }
                if (cls2.isAssignableFrom(interfaces[i10])) {
                    return f(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return f(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type g(int i10, ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[i10];
        return type instanceof WildcardType ? ((WildcardType) type).getLowerBounds()[0] : type;
    }

    public static Type h(int i10, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i10 >= 0 && i10 < actualTypeArguments.length) {
            Type type = actualTypeArguments[i10];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        throw new IllegalArgumentException("Index " + i10 + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    public static Class<?> i(Type type) {
        b(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(i(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return i(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    public static Type j(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return r(type, cls, f(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    public static boolean k(@Nullable Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (k(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return k(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static int l(Object[] objArr, Object obj) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (obj.equals(objArr[i10])) {
                return i10;
            }
        }
        throw new NoSuchElementException();
    }

    public static boolean m(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    public static RuntimeException n(Method method, String str, Object... objArr) {
        return o(method, null, str, objArr);
    }

    public static RuntimeException o(Method method, @Nullable Throwable th, String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + method.getDeclaringClass().getSimpleName() + "." + method.getName(), th);
    }

    public static RuntimeException p(Method method, int i10, String str, Object... objArr) {
        return n(method, str + " (parameter #" + (i10 + 1) + ")", objArr);
    }

    public static RuntimeException q(Method method, Throwable th, int i10, String str, Object... objArr) {
        return o(method, th, str + " (parameter #" + (i10 + 1) + ")", objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r10 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Type r(Type type, Class<?> cls, Type type2) {
        Type type3;
        while (type3 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type3;
            Type s10 = s(type, cls, typeVariable);
            if (s10 == typeVariable) {
                return s10;
            }
            type3 = s10;
        }
        if (type3 instanceof Class) {
            Class cls2 = (Class) type3;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type r10 = r(type, cls, componentType);
                return componentType == r10 ? cls2 : new a(r10);
            }
        }
        if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type r11 = r(type, cls, genericComponentType);
            return genericComponentType == r11 ? genericArrayType : new a(r11);
        }
        if (type3 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            Type ownerType = parameterizedType.getOwnerType();
            Type r12 = r(type, cls, ownerType);
            boolean z10 = r12 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                Type r13 = r(type, cls, actualTypeArguments[i10]);
                if (r13 != actualTypeArguments[i10]) {
                    if (!z10) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z10 = true;
                    }
                    actualTypeArguments[i10] = r13;
                }
            }
            return z10 ? new b(r12, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        boolean z11 = type3 instanceof WildcardType;
        Type type4 = type3;
        if (z11) {
            WildcardType wildcardType = (WildcardType) type3;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type r14 = r(type, cls, lowerBounds[0]);
                type4 = wildcardType;
                if (r14 != lowerBounds[0]) {
                    return new c(new Type[]{Object.class}, new Type[]{r14});
                }
            } else {
                type4 = wildcardType;
                if (upperBounds.length == 1) {
                    Type r15 = r(type, cls, upperBounds[0]);
                    type4 = wildcardType;
                    if (r15 != upperBounds[0]) {
                        return new c(new Type[]{r15}, f13547a);
                    }
                }
            }
        }
        return type4;
    }

    public static Type s(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> d10 = d(typeVariable);
        if (d10 == null) {
            return typeVariable;
        }
        Type f10 = f(type, cls, d10);
        if (!(f10 instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) f10).getActualTypeArguments()[l(d10.getTypeParameters(), typeVariable)];
    }

    public static void t(Throwable th) {
        if (!(th instanceof VirtualMachineError)) {
            if (!(th instanceof ThreadDeath)) {
                if (th instanceof LinkageError) {
                    throw ((LinkageError) th);
                }
                return;
            }
            throw ((ThreadDeath) th);
        }
        throw ((VirtualMachineError) th);
    }

    public static String u(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static <T> void v(Class<T> cls) {
        if (cls.isInterface()) {
            if (cls.getInterfaces().length > 0) {
                throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
            }
            return;
        }
        throw new IllegalArgumentException("API declarations must be interfaces.");
    }
}
